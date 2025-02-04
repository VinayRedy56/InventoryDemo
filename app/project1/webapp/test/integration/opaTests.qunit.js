sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/InvHeaderList',
		'project1/test/integration/pages/InvHeaderObjectPage',
		'project1/test/integration/pages/InvItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, InvHeaderList, InvHeaderObjectPage, InvItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheInvHeaderList: InvHeaderList,
					onTheInvHeaderObjectPage: InvHeaderObjectPage,
					onTheInvItemsObjectPage: InvItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);