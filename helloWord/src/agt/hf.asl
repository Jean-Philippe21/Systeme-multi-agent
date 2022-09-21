// Agent hf in project helloWord

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : message(X) <- for ( numMsg(_)[artifact_name(_,Name)] & focused(_,Name[artifact_type("display.GUIConsole")],ArtId) ) {
          printMsg(X)[artifact_id(ArtId)]
      }.

+!start : true <- .print("hello world.").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }


// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
