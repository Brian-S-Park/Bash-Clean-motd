
# Bash Clean Message of the Day! 



   A simple, clean opening message of the day that displays the operating system version, date, and a quote of the day. The quotes can be edited in the /quotes
direcotry. Below is an example of what your terminal can look like as well. I used the tool jp2a by 
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
                                                                                                                        
                                                        Tuesday
                                                    November-09-2021

                                 A successful man is one who can lay a firm foundation
                                       with the bricks others have thrown at them.
                                                    -David Brinkley


Instructions:

(Linux)
1. Clone repo into your local drive and switch into the newly created directory.
2. Run "chmod +x startup.sh" to make it executable.
3. Change directories into /ascii and run "chmod +x image.sh" to make the logo generator executable as well.
4. Make sure all permission for the folder allow the script to be executable without sudo priveledges.
5. Run "nano ~/.bashrc" and scroll to the bottom of document.
6. Add "bash <path to folder>/Bash-Clean-motd/startup.sh".
7. Done!

(MacOS)
1. Clone repo into your local drive and switch into the newly created directory.
2. Run "chmod +x startup_mac.sh" to make it executable.
3. Change directories into /ascii and run "chmod +x startup_mac.sh" to make the logo generator exectuabel as well.
4. Open preferences on terminal and go to "Shell" under the "Profiles" tab.
5. Check the box that says "Run command:" and type "bash ~/Bash-Clean-motd/startup_mac.sh" (no quotes).
6. Close terminal and reopen to set the changes.
y7. Done!
