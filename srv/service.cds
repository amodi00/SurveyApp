using { CafeteriaSurvey } from '../db/schema.cds';

service CafeteriaSurveySrv {
  @odata.draft.enabled
  entity Survey as projection on CafeteriaSurvey.Survey;
}