sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'foodqualitysurvey/test/integration/FirstJourney',
		'foodqualitysurvey/test/integration/pages/SurveyList',
		'foodqualitysurvey/test/integration/pages/SurveyObjectPage'
    ],
    function(JourneyRunner, opaJourney, SurveyList, SurveyObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('foodqualitysurvey') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSurveyList: SurveyList,
					onTheSurveyObjectPage: SurveyObjectPage
                }
            },
            opaJourney.run
        );
    }
);