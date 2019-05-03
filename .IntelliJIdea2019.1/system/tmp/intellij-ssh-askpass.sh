#!/bin/sh
"/opt/intellij-idea-ue-eap/jre64/bin/java" -cp "/opt/intellij-idea-ue-eap/plugins/git4idea/lib/git4idea-rt.jar:/opt/intellij-idea-ue-eap/lib/xmlrpc-2.0.1.jar:/opt/intellij-idea-ue-eap/lib/commons-codec-1.10.jar:/opt/intellij-idea-ue-eap/lib/util.jar" org.jetbrains.git4idea.nativessh.GitNativeSshAskPassApp "$@"
