page 88100 "MPA Dynamic Rep. Subs. Mapping"
{
    Caption = 'Dynamic Report Substitution Mappings';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "MPA Dynamic Rep. Subs. Mapping";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(ReportId; Rec.ReportId)
                {
                    ApplicationArea = All;
                }
                field("Report Caption"; Rec."Report Caption")
                {
                    ApplicationArea = All;
                }
                field(NewReportId; Rec.NewReportId)
                {
                    ApplicationArea = All;
                }
                field("New Report Caption"; Rec."New Report Caption")
                {
                    ApplicationArea = All;

                }
            }

        }
    }
}