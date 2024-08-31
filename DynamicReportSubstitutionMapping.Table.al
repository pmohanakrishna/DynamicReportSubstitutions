table 88100 "MPA Dynamic Rep. Subs. Mapping"
{
    Caption = 'Dynamic Report Substitution Mapping';
    DataClassification = CustomerContent;

    fields
    {
        field(1; ReportId; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" WHERE("Object Type" = CONST(Report));
            trigger OnValidate()
            begin
                Calcfields("Report Caption");
            end;
        }
        field(2; NewReportId; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = AllObjWithCaption."Object ID" WHERE("Object Type" = CONST(Report));
            trigger OnValidate()
            begin
                Calcfields("New Report Caption");
            end;
        }
        field(4; "Report Caption"; Text[250])
        {
            CalcFormula = lookup("Report Metadata".Caption where(ID = field(ReportId)));
            Caption = 'Report Name';
            Editable = false;
            FieldClass = Flowfield;
        }
        field(5; "New Report Caption"; Text[250])
        {
            CalcFormula = lookup("Report Metadata".Caption where(ID = field(NewReportId)));
            Caption = 'New Report Name';
            Editable = false;
            FieldClass = Flowfield;
        }
    }

    keys
    {
        key(Key1; ReportId)
        {
            Clustered = true;
        }
    }

}