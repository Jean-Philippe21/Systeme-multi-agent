// Agent bonjour in project helloWord

/* Initial beliefs and rules */

/* Initial goals */
msg(afrique,"Je suis bob").

!start.

/* Plans */
+!start : message(X) <- printMsg(X).

+!start : country(Z) & msg(Z,W) <- printMsg(W).

+!start : true <- .print("hello world.").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
{ include("$moiseJar/asl/org-obedient.asl") }
