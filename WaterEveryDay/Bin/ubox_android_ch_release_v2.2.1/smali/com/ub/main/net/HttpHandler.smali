.class public Lcom/ub/main/net/HttpHandler;
.super Landroid/os/Handler;
.source "HttpHandler.java"


# static fields
.field public static final HttpError_Dismiss_Dialog:I = -0x4

.field public static final HttpError_Net:I = -0x1

.field public static final HttpError_Parse:I = -0x2

.field public static final HttpError_TimeOut:I = -0x3

.field public static final Http_OK:I


# instance fields
.field private _context:Landroid/content/Context;

.field private _observer:Lcom/ub/main/net/IHttpObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V
    .locals 1
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/net/HttpHandler;->_context:Landroid/content/Context;

    .line 107
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/ub/main/net/HttpHandler;->_context:Landroid/content/Context;

    .line 114
    iput-object v0, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    .line 115
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 57
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    if-nez v6, :cond_0

    .line 97
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, bd:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 96
    :goto_1
    const/4 v0, 0x0

    .line 97
    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    sget-object v7, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Net_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-interface {v6, v7}, Lcom/ub/main/net/IHttpObserver;->HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V

    goto :goto_1

    .line 68
    :pswitch_1
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    sget-object v7, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Parse_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-interface {v6, v7}, Lcom/ub/main/net/IHttpObserver;->HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V

    goto :goto_1

    .line 71
    :pswitch_2
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    sget-object v7, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->TimeOut_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-interface {v6, v7}, Lcom/ub/main/net/IHttpObserver;->HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V

    goto :goto_1

    .line 74
    :pswitch_3
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    sget-object v7, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->DISMISS_DIALOG:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-interface {v6, v7}, Lcom/ub/main/net/IHttpObserver;->HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V

    goto :goto_1

    .line 78
    :pswitch_4
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    const-string v6, "jsonString"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v6, "head"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    .local v2, header:Lorg/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, stateCode:Ljava/lang/String;
    const-string v6, "503"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/ub/main/login/LoginUI;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    const/high16 v6, 0x400

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    .end local v2           #header:Lorg/json/JSONObject;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #stateCode:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/Throwable;
    const-string v6, "HttpHandler"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    sget-object v7, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->Process_ERROR:Lcom/ub/main/net/IHttpObserver$HttpErrorCode;

    invoke-interface {v6, v7}, Lcom/ub/main/net/IHttpObserver;->HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V

    goto :goto_1

    .line 88
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v2       #header:Lorg/json/JSONObject;
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #stateCode:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/ub/main/net/HttpHandler;->_observer:Lcom/ub/main/net/IHttpObserver;

    invoke-static {}, Lcom/ub/main/util/NetConfig$HttpRequestId;->values()[Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-result-object v7

    const-string v8, "requestId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    const-string v8, "jsonString"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/ub/main/net/IHttpObserver;->HttpResponseOk(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
