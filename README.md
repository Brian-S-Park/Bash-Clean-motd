
						Ubuntu Start Message!



   A simple, clean opening message that displays the operating system version, date, a quote of the day, and whether
or not an update is available. The quotes will change depending on the day of the week and can be edited in the /quotes
folder. The "Available updates" message will not appear unless there is an update immediately available to preserve a
clean looking  terminal. Below is an example of what your terminal can look like as well. I used the tool jp2a by 
cslarsen (https://github.com/cslarsen/jp2a) to create an ascii image of the ubuntu logo and the ascii image is 
avialable in the /ascii folder. The current code has been updated to center the message depending on any terminal
screen size. It was a fun little project to introduce myself to bash scripting. Thank you for checking out my project!


	Example:
                                __  ____                __           ___   ____   ____  __ __
                               / / / / /_  __  ______  / /___  __   |__ \ / __ \ / __ \/ // /
                              / / / / __ \/ / / / __ \/ __/ / / /   __/ // / / // / / / // /_
                             / /_/ / /_/ / /_/ / / / / /_/ /_/ /   / __// /_/ // /_/ /__  __/
                             \____/_.___/\__,_/_/ /_/\__/\__,_/   /____/\____(_)____/  /_/


                                                      .;codddoc;.
                                                  .,coddddddddddddc,.
                                                'ldddddddddddddddddddl'
                                              'odddddddddddddddc. .:dddo'
                                             cdddddddddo:,'''.l.   .dddddc
                                            ldddddddo,l'       ;,.,lddddddl
                                           cddddddd,   l;;:c:;.    ,dddddddl
                                          'ddddddd'   ,odddddddd,   .ddddddd'
                                          cdddl:ll   cdddddddddddc   :ddddddl
                                          ddd'   .: .ddddddddddddd,..;ddddddd
                                          ddd,   .; .ddddddddddddd,..;ddddddd
                                          cdddlcll   :dddddddddddc   :ddddddl
                                          'ddddddd'   ,odddddddo,   'ddddddd'
                                           cddddddd;   l;,:::,.    ,dddddddc
                                            ldddddddo,l'      .;'.'lddddddl
                                             :dddddddddo:;,,,;l.   .dddddc
                                              .ldddddddddddddddc. .cdddo.
                                                .cdddddddddddddddddddl'
                                                  .'codddddddddddoc'.
                                                      .;codddoc;.
                                                                                                                        
                                                       Wednesday
                                                    November-03-2021

                                No one can make you feel inferior without your consent.
                                                   -Eleanor Roosevelt

Instructions:

(Linux)
1. Clone repo into your local drive and switch into the newly created directory.
2. Run "chmod +x startup.sh" to make it executable.
3. Make sure all permission for the folder allow the script to be executable without sudo priveledges.
4. Run "nano ~/.bashrc" and scroll to the bottom of document.
5. Add "bash ~/Ubuntu-Startup-Message/startup.sh".
6. Done!
