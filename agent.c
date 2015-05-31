#include <jvmti.h>
#include <stdio.h>

JNIEXPORT jint JNICALL Agent_OnLoad(JavaVM *jvm, char *options, void *reserved) {
	/* We return JNI_OK to signify success */

	printf("oh hey, i'm your agent!\n");
	/* test agent running */

	return JNI_OK;
 }
