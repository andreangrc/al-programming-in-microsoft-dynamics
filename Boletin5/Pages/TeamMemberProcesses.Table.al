page 50531 TeamMemberProcessesAndrea
{
    Caption = 'Ficha mov. cola proyecto Andrea';
    PageType = Card;
    SourceTable = TeamMemberProcesses;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                Editable = Rec.Status = Rec.Status::"On Hold";
                field("Object Type to Run"; Rec."Object Type to Run")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Specifies the type of the object, report or codeunit, that is to be run for the job queue entry. After you specify a type, you then select an object ID of that type in the Object ID to Run field.';
                }
                field("Object ID to Run"; Rec."Object ID to Run")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Specifies the ID of the object that is to be run for this job. You can select an ID that is of the object type that you have specified in the Object Type to Run field.';
                }
                field("Object Caption to Run"; Rec."Object Caption to Run")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the name of the object that is selected in the Object ID to Run field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Specifies a description of the job queue entry. You can edit and update the description on the job queue entry card. The description is also displayed in the Job Queue Entries window, but it cannot be updated there.';
                }
                field("Parameter String"; Rec."Parameter String")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies a text string that is used as a parameter by the job queue when it is run.';
                }
                field("Job Queue Category Code"; Rec."Job Queue Category Code")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies the code of the job queue category to which the job queue entry belongs. Choose the field to select a code from the list.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies the ID of the user who posted the entry, to be used, for example, in the change log.';
                }
                field("Maximum No. of Attempts to Run"; Rec."Maximum No. of Attempts to Run")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies how many times a job queue task should be rerun after a job queue fails to run. This is useful for situations in which a task might be unresponsive. For example, a task might be unresponsive because it depends on an external resource that is not always available.';
                }
                field("Rerun Delay (sec.)"; Rec."Rerun Delay (sec.)")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies how many seconds to wait before re-running this job queue task in the event of a failure.';
                }
                field("Last Ready State"; Rec."Last Ready State")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies the date and time when the job queue entry was last set to Ready and sent to the job queue.';
                }
                field("Earliest Start Date/Time"; Rec."Earliest Start Date/Time")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the earliest date and time when the job queue entry should be run. The format for the date and time must be month/day/year hour:minute, and then AM or PM. For example, 3/10/2021 12:00 AM.';
                }
                field("Expiration Date/Time"; Rec."Expiration Date/Time")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                    ToolTip = 'Specifies the date and time when the job queue entry is to expire, after which the job queue entry will not be run.  The format for the date and time must be month/day/year hour:minute, and then AM or PM. For example, 3/10/2021 12:00 AM.';
                }
                field("Timeout"; Rec."Job Timeout")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the maximum time that the job queue entry is allowed to run.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the status of the job queue entry. When you create a job queue entry, its status is set to On Hold. You can set the status to Ready and back to On Hold. Otherwise, status information in this field is updated automatically.';
                }
            }
            group("Report Parameters")
            {
                Caption = 'Report Parameters';
                Editable = Rec.Status = Rec.Status::"On Hold";
                field("Report Request Page Options"; Rec."Report Request Page Options")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether options on the report request page have been set for scheduled report job. If the check box is selected, then options have been set for the scheduled report.';
                }
                field("Report Output Type"; Rec."Report Output Type")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Specifies the output of the scheduled report.';
                }
                field("Printer Name"; Rec."Printer Name")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the printer to use to print the scheduled report.';
                }
            }
            group(Periocidad)
            {
                Caption = 'Periocidad';
                Editable = Rec.Status = Rec.Status::"On Hold";
                field("Recurring Job"; Rec."Recurring Job")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    ToolTip = 'Specifies if the job queue entry is recurring. If the Recurring Job check box is selected, then the job queue entry is recurring. If the check box is cleared, the job queue entry is not recurring. After you specify that a job queue entry is a recurring one, you must specify on which days of the week the job queue entry is to run. Optionally, you can also specify a time of day for the job to run and how many minutes should elapse between runs.';
                }
                field("Run on Mondays"; Rec."Run on Mondays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Mondays.';
                }
                field("Run on Tuesdays"; Rec."Run on Tuesdays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Tuesdays.';
                }
                field("Run on Wednesdays"; Rec."Run on Wednesdays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Wednesdays.';
                }
                field("Run on Thursdays"; Rec."Run on Thursdays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Thursdays.';
                }
                field("Run on Fridays"; Rec."Run on Fridays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Fridays.';
                }
                field("Run on Saturdays"; Rec."Run on Saturdays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Saturdays.';
                }
                field("Run on Sundays"; Rec."Run on Sundays")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies that the job queue entry runs on Sundays.';
                }
                field("Next Run Date Formula"; Rec."Next Run Date Formula")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    ToolTip = 'Specifies the date formula that is used to calculate the next time the recurring job queue entry will run. If you use a date formula, all other recurrence settings are cleared.';
                }
                field("Starting Time"; Rec."Starting Time")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = Rec."Recurring Job" = TRUE;
                    Importance = Promoted;
                    ToolTip = 'Specifies the earliest time of the day that the recurring job queue entry is to be run.';
                }
                field("Ending Time"; Rec."Ending Time")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = Rec."Recurring Job" = TRUE;
                    Importance = Promoted;
                    ToolTip = 'Specifies the latest time of the day that the recurring job queue entry is to be run.';
                }
                field("No. of Minutes between Runs"; Rec."No. of Minutes between Runs")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = Rec."Recurring Job" = TRUE;
                    Importance = Promoted;
                    ToolTip = 'Specifies the minimum number of minutes that are to elapse between runs of a job queue entry. The value cannot be less than one minute. This field only has meaning if the job queue entry is set to be a recurring job. If you use a no. of minutes between runs, the date formula setting is cleared.';
                }
                field("Inactivity Timeout Period"; Rec."Inactivity Timeout Period")
                {
                    ApplicationArea = Basic, Suite;
                    MinValue = 5;
                    ToolTip = 'Specifies the number of minutes that pass before a recurring job that has the status On Hold With Inactivity Timeout is automatically restated. The value cannot be less than five minutes.';
                }
                label(Control33)
                {
                    ApplicationArea = Basic, Suite;
                    ShowCaption = false;
                    Caption = '';
                }
                label(Control31)
                {
                    ApplicationArea = Basic, Suite;
                    ShowCaption = false;
                    Caption = '';
                }
                label(Control22)
                {
                    ApplicationArea = Basic, Suite;
                    ShowCaption = false;
                    Caption = '';
                }
            }
        }
        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
                Visible = false;
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("Job &Queue")
            {
                Caption = 'Job &Queue';
                Image = CheckList;
                action("Set Status to Ready")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Set Status to Ready';
                    Image = ResetStatus;
                    ToolTip = 'Change the status of the entry.';

                }
                action("Set On Hold")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Set On Hold';
                    Image = Pause;
                    ToolTip = 'Change the status of the entry.';


                }
                action("Show Error")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show Error';
                    Image = Error;
                    ToolTip = 'Show the error message that has stopped the entry.';


                }
                action(Restart)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Restart';
                    Image = Start;
                    ToolTip = 'Stop and start the entry.';


                }
                action(RunInForeground)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Run once (foreground)';
                    Image = DebugNext;
                    ToolTip = 'Run a copy of this job once in foreground.';

                }
            }

        }
    }

}



