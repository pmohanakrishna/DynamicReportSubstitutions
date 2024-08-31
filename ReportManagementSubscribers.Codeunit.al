codeunit 88100 "MPA Report Management Subs"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnAfterSubstituteReport(ReportId: Integer; RunMode: Option; RequestPageXml: Text; RecordRef: RecordRef; var NewReportId: Integer);
    var
        SubstituteReports: Record "MPA Dynamic Rep. Subs. Mapping";
    begin
        if SubstituteReports.Get(ReportId) then
            NewReportId := SubstituteReports.NewReportId;
    end;

}