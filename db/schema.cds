namespace CafeteriaSurvey;

entity Survey {
  key ID: UUID;
  surveyID: String(50) @assert.unique @mandatory;
  quality: Integer;
  servingSize: Integer;
  staffFriendliness: Integer;
  waitTime: Integer;
  overallExperience: Integer;
}
