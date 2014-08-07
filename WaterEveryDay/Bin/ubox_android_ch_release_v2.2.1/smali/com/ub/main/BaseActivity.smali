.class public abstract Lcom/ub/main/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ub/main/net/IHttpObserver;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public TAG:Ljava/lang/String;

.field public httpStack:Lcom/ub/main/net/HttpStack;

.field public jsonArray:Lorg/json/JSONArray;

.field public jsonObject:Lorg/json/JSONObject;

.field private progressDialog:Landroid/app/ProgressDialog;

.field public update:Ljava/lang/String;

.field public updateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const-string v0, "BaseActivity"

    iput-object v0, p0, Lcom/ub/main/BaseActivity;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, "0"

    iput-object v0, p0, Lcom/ub/main/BaseActivity;->update:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/BaseActivity;->updateUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 194
    const-string v0, "CouponHome"

    invoke-virtual {p1}, Lcom/ub/main/net/IHttpObserver$HttpErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 196
    invoke-virtual {p0}, Lcom/ub/main/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef\uff01"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public HttpResponseOk(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "responseJsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 93
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ub/main/BaseActivity;->jsonObject:Lorg/json/JSONObject;

    .line 94
    iget-object v3, p0, Lcom/ub/main/BaseActivity;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "head"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, header:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/ub/main/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpResponse--------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lcom/ub/main/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpResponse--------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/BaseActivity;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, stateCode:Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, message:Ljava/lang/String;
    const-string v3, "update"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/BaseActivity;->update:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/ub/main/BaseActivity;->update:Ljava/lang/String;

    sput-object v3, Lcom/ub/main/util/NetConfig;->UPDATE:Ljava/lang/String;

    .line 101
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/BaseActivity;->updateUrl:Ljava/lang/String;

    .line 103
    const-string v3, "507"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 107
    new-instance v4, Lcom/ub/main/BaseActivity$1;

    invoke-direct {v4, p0}, Lcom/ub/main/BaseActivity$1;-><init>(Lcom/ub/main/BaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 118
    const-string v4, "\u786e\u5b9a"

    .line 119
    new-instance v5, Lcom/ub/main/BaseActivity$2;

    invoke-direct {v5, p0}, Lcom/ub/main/BaseActivity$2;-><init>(Lcom/ub/main/BaseActivity;)V

    .line 118
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 190
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v3, "499"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 137
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 138
    new-instance v4, Lcom/ub/main/BaseActivity$3;

    invoke-direct {v4, p0}, Lcom/ub/main/BaseActivity$3;-><init>(Lcom/ub/main/BaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 147
    const-string v4, "\u786e\u5b9a"

    .line 148
    new-instance v5, Lcom/ub/main/BaseActivity$4;

    invoke-direct {v5, p0}, Lcom/ub/main/BaseActivity$4;-><init>(Lcom/ub/main/BaseActivity;)V

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 158
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/ub/main/BaseActivity$5;

    invoke-direct {v5, p0}, Lcom/ub/main/BaseActivity$5;-><init>(Lcom/ub/main/BaseActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 165
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 167
    const-string v4, "\u6709\u65b0\u7248\u672c\u9700\u8981\u66f4\u65b0\uff0c\u8bf7\u653e\u7f6eSD\u5361\u540e\u91cd\u65b0\u518d\u8bd5\uff01"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 168
    new-instance v4, Lcom/ub/main/BaseActivity$6;

    invoke-direct {v4, p0}, Lcom/ub/main/BaseActivity$6;-><init>(Lcom/ub/main/BaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 177
    const-string v4, "\u786e\u5b9a"

    .line 178
    new-instance v5, Lcom/ub/main/BaseActivity$7;

    invoke-direct {v5, p0}, Lcom/ub/main/BaseActivity$7;-><init>(Lcom/ub/main/BaseActivity;)V

    .line 177
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Lcom/ub/main/BaseActivity;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 260
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/UIConfig;->isLoading:Z

    .line 261
    return-void
.end method

.method public httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V
    .locals 3
    .parameter "requestId"
    .parameter "postString"
    .parameter "context"
    .parameter "observer"
    .parameter "spinerMessage"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/ub/main/BaseActivity;->dismissLoadingDialog()V

    .line 274
    if-eqz p5, :cond_0

    .line 275
    invoke-virtual {p0, p0, p5}, Lcom/ub/main/BaseActivity;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_0
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 279
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    iput-object v1, p0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    .line 280
    iget-object v1, p0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    .line 281
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ub/main/BaseActivity;->requestWindowFeature(I)Z

    .line 205
    invoke-virtual {p0}, Lcom/ub/main/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/ub/main/util/NetConfig;->CONTEXT:Landroid/content/Context;

    .line 207
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/ub/main/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 208
    .local v3, wifi:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    const-string v4, "macAddress"

    .line 210
    invoke-virtual {p0, v4, v5}, Lcom/ub/main/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, sharedata:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    .line 213
    .local v0, num:I
    if-lez v0, :cond_0

    .line 214
    const-string v4, "mac"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/UIConfig;->setPHONE_MAC_ADDRESS(Ljava/lang/String;)V

    .line 224
    .end local v0           #num:I
    .end local v1           #sharedata:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/ub/main/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/UIConfig;->setPHONE_MAC_ADDRESS(Ljava/lang/String;)V

    .line 220
    const-string v4, "macAddress"

    invoke-virtual {p0, v4, v5}, Lcom/ub/main/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 221
    .local v2, userData:Landroid/content/SharedPreferences$Editor;
    const-string v4, "mac"

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 287
    iput-object v1, p0, Lcom/ub/main/BaseActivity;->jsonArray:Lorg/json/JSONArray;

    .line 288
    iput-object v1, p0, Lcom/ub/main/BaseActivity;->jsonObject:Lorg/json/JSONObject;

    .line 289
    iput-object v1, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 290
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    invoke-virtual {v0}, Lcom/ub/main/net/HttpStack;->CancelRequest()V

    .line 293
    :cond_0
    iput-object v1, p0, Lcom/ub/main/BaseActivity;->httpStack:Lcom/ub/main/net/HttpStack;

    .line 294
    iput-object v1, p0, Lcom/ub/main/BaseActivity;->TAG:Ljava/lang/String;

    .line 295
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 296
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 297
    return-void
.end method

.method public showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 237
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/UIConfig;->isLoading:Z

    .line 240
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/ub/main/BaseActivity$8;

    invoke-direct {v1, p0}, Lcom/ub/main/BaseActivity$8;-><init>(Lcom/ub/main/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 250
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ub/main/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "application exit!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
