﻿/*
© Siemens AG, 2017-2018
Author: Dr. Martin Bischoff (martin.bischoff@siemens.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
<http://www.apache.org/licenses/LICENSE-2.0>.
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

namespace RosSharp.RosBridgeClient
{
    public class JoySubscriber : Subscriber<Messages.Sensor.Joy>
    {
        public JoyButtonWriter[] joyButtonWriters;
        public JoyAxisWriter[] joyAxisWriters;

		protected override void Start()
		{
			base.Start();
		}
		
        protected override void ReceiveMessage(Messages.Sensor.Joy joy)
        {
            int I = joyButtonWriters.Length < joy.buttons.Length ? joyButtonWriters.Length : joy.buttons.Length;
            for (int i = 0; i < I; i++)
                if (joyButtonWriters[i] != null)
                    joyButtonWriters[i].Write(joy.buttons[i]);

            I = joyAxisWriters.Length < joy.axes.Length ? joyAxisWriters.Length : joy.axes.Length;
            for (int i = 0; i < I; i++)
                if (joyAxisWriters[i] != null)
                    joyAxisWriters[i].Write(joy.axes[i]);
        }
    }
}
