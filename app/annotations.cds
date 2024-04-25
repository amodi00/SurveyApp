using { CafeteriaSurveySrv } from '../srv/service.cds';

annotate CafeteriaSurveySrv.Survey with @UI.DataPoint #quality: {
  Value: quality,
  Title: 'Quality',
};
annotate CafeteriaSurveySrv.Survey with @UI.DataPoint #servingSize: {
  Value: servingSize,
  Title: 'Serving Size',
};
annotate CafeteriaSurveySrv.Survey with @UI.DataPoint #staffFriendliness: {
  Value: staffFriendliness,
  Title: 'Staff Friendliness',
};
// annotate CafeteriaSurveySrv.Survey with @UI.HeaderFacets: [
//  { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#quality', ID: 'Quality' },
//  { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#servingSize', ID: 'ServingSize' },
//  { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#staffFriendliness', ID: 'StaffFriendliness' }
// ];
annotate CafeteriaSurveySrv.Survey with @UI.HeaderInfo: {
  TypeName: 'Survey',
  TypeNamePlural: 'Surveys',
  Title: { Value: surveyID }
};
annotate CafeteriaSurveySrv.Survey with {
  ID @UI.Hidden
};
annotate CafeteriaSurveySrv.Survey with @UI.Identification: [{ Value: surveyID }];
annotate CafeteriaSurveySrv.Survey with {
  surveyID @Common.Label: 'Id';
  quality @Common.Label: 'Quality';
  servingSize @Common.Label: 'Serving Size';
  staffFriendliness @Common.Label: 'Staff Friendliness';
  waitTime @Common.Label: 'Wait Time';
  overallExperience @Common.Label: 'Overall Experience'
};
annotate CafeteriaSurveySrv.Survey with {
  ID @Common.Text: { $value: surveyID, ![@UI.TextArrangement]: #TextOnly };
};
annotate CafeteriaSurveySrv.Survey with @UI.SelectionFields: [
  surveyID
];
annotate CafeteriaSurveySrv.Survey with @UI.LineItem : [
    { $Type: 'UI.DataField', Value: surveyID },
    { $Type: 'UI.DataField', Value: quality },
    { $Type: 'UI.DataField', Value: servingSize },
    { $Type: 'UI.DataField', Value: staffFriendliness },
    { $Type: 'UI.DataField', Value: waitTime },
    { $Type: 'UI.DataField', Value: overallExperience }
];
annotate CafeteriaSurveySrv.Survey with @UI.FieldGroup #surveyDetails: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: surveyID },
    { $Type: 'UI.DataField', Value: quality },
    { $Type: 'UI.DataField', Value: servingSize },
    { $Type: 'UI.DataField', Value: staffFriendliness },
    { $Type: 'UI.DataField', Value: waitTime },
    { $Type: 'UI.DataField', Value: overallExperience }

  ]
};


annotate CafeteriaSurveySrv.Survey with @UI.Facets: [
  {
    $Type: 'UI.CollectionFacet',
    ID: 'surveyTab',
    Label: 'Survey',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'surveyDetails', Label: 'Survey Details', Target: '@UI.FieldGroup#surveyDetails' } ]
  }
];