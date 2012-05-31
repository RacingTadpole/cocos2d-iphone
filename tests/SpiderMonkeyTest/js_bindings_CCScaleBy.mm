/*
* AUTOGENERATED FILE. DO NOT EDIT IT
* Generated by ../../tools/js/generate_spidermonkey_bindings.py on 2012-05-31
*/

// needed for callbacks from objective-c to JS
#import <objc/runtime.h>
#import "JRSwizzle.h"

#import "jstypedarray.h"
#import "ScriptingCore.h"   

#import "js_bindings_CCScaleBy.h"
#import "js_bindings_cocos2d.h"


JSClass* JSPROXY_CCScaleBy_class = NULL;
JSObject* JSPROXY_CCScaleBy_object = NULL;
 // Constructor
JSBool JSPROXY_CCScaleBy_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCScaleBy_class, JSPROXY_CCScaleBy_object, NULL);

    JSPROXY_CCScaleBy *proxy = [[JSPROXY_CCScaleBy alloc] initWithJSObject:jsobj];

    JS_SetPrivate(jsobj, proxy);
    JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

    /* no callbacks */
    
    return JS_TRUE;
}

// Destructor
void JSPROXY_CCScaleBy_finalize(JSContext *cx, JSObject *obj)
{
	JSPROXY_CCScaleBy *pt = (JSPROXY_CCScaleBy*)JS_GetPrivate(obj);
	if (pt) {
		// id real = [pt realObj];
	
		/* no callbacks */

		[pt release];

		JS_free(cx, pt);
	}
}

// Arguments: ccTime, float
// Ret value: None
JSBool JSPROXY_CCScaleBy_initWithDuration_scale_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( ![proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 2, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	double arg0; JS_ValueToNumber( cx, *argvp++, &arg0 );
	double arg1; JS_ValueToNumber( cx, *argvp++, &arg1 );

	CCScaleBy *real = [[CCScaleBy alloc] initWithDuration:(ccTime)arg0 scale:(float)arg1  ];
	[proxy setRealObj: real];
	[real release];

	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

@implementation JSPROXY_CCScaleBy

+(void) createClassWithContext:(JSContext*)cx object:(JSObject*)globalObj name:(NSString*)name
{
	JSPROXY_CCScaleBy_class = (JSClass *)calloc(1, sizeof(JSClass));
	JSPROXY_CCScaleBy_class->name = [name UTF8String];
	JSPROXY_CCScaleBy_class->addProperty = JS_PropertyStub;
	JSPROXY_CCScaleBy_class->delProperty = JS_PropertyStub;
	JSPROXY_CCScaleBy_class->getProperty = JS_PropertyStub;
	JSPROXY_CCScaleBy_class->setProperty = JS_StrictPropertyStub;
	JSPROXY_CCScaleBy_class->enumerate = JS_EnumerateStub;
	JSPROXY_CCScaleBy_class->resolve = JS_ResolveStub;
	JSPROXY_CCScaleBy_class->convert = JS_ConvertStub;
	JSPROXY_CCScaleBy_class->finalize = JSPROXY_CCScaleBy_finalize;
	JSPROXY_CCScaleBy_class->flags = JSCLASS_HAS_PRIVATE;

	static JSPropertySpec properties[] = {
		{0, 0, 0, 0, 0}
	};
	static JSFunctionSpec funcs[] = {
		JS_FN("initWithDurationScale", JSPROXY_CCScaleBy_initWithDuration_scale_, 1, JSPROP_PERMANENT | JSPROP_SHARED),
		JS_FS_END
	};
	static JSFunctionSpec st_funcs[] = {
		JS_FS_END
	};

	JSPROXY_CCScaleBy_object = JS_InitClass(cx, globalObj, JSPROXY_CCScaleTo_object, JSPROXY_CCScaleBy_class, JSPROXY_CCScaleBy_constructor,0,properties,funcs,NULL,st_funcs);
}

@end
