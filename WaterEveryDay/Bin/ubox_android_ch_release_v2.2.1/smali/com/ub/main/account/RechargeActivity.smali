.class public Lcom/ub/main/account/RechargeActivity;
.super Lcom/ub/main/BaseActivity;
.source "RechargeActivity.java"

# interfaces
.implements Lcom/ub/main/data/PayResultProcessListener;


# static fields
.field private static final UBOX_RECHARGE_DESCRIB:Ljava/lang/String; = "\u4f59\u989d\u5145\u503c"

.field private static final UBOX_RECHARGE_NAME:Ljava/lang/String; = "\u4f59\u989d\u5145\u503c"


# instance fields
.field private account:Lcom/ub/main/data/CreditCardAccountInfo;

.field private alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

.field private back:Landroid/widget/Button;

.field private moneyForRechare:Ljava/lang/String;

.field private order_id:Ljava/lang/String;

.field private order_product_id:Ljava/lang/String;

.field private pay_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/account/RechargeActivity;->pay_type:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/account/RechargeActivity;->moneyForRechare:Ljava/lang/String;

    .line 63
    const-string v0, "1"

    iput-object v0, p0, Lcom/ub/main/account/RechargeActivity;->order_product_id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private EPOSPayResultProcess()V
    .locals 8

    .prologue
    .line 279
    :try_start_0
    iget-object v5, p0, Lcom/ub/main/account/RechargeActivity;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "head"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 280
    .local v2, header:Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/ub/main/account/RechargeActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HttpResponse--------"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, stateCode:Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, message:Ljava/lang/String;
    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    iget-object v5, p0, Lcom/ub/main/account/RechargeActivity;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, code:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 289
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 292
    const-string v6, "\u5145\u503c\u5df2\u63d0\u4ea4\uff0c\u6b63\u5728\u7b49\u5f85\u94f6\u884c\u5904\u7406,\u666e\u901a\u94f6\u884c1-2\u5206\u949f\u53ef\u4ee5\u5230\u8d26.(\u62db\u884c\u4fe1\u7528\u5361\u9700\u8981\u7535\u8bdd\u94f6\u884c\u5904\u7406\u9664\u5916).\u5b8c\u6210\u540e\u4f1a\u77ed\u4fe1\u6216\u90ae\u4ef6\u63d0\u793a."

    .line 291
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 293
    const-string v6, "\u786e\u5b9a"

    .line 294
    new-instance v7, Lcom/ub/main/account/RechargeActivity$7;

    invoke-direct {v7, p0}, Lcom/ub/main/account/RechargeActivity$7;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    .line 293
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 300
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #header:Lorg/json/JSONObject;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #stateCode:Ljava/lang/String;
    :goto_0
    return-void

    .line 302
    .restart local v0       #code:Ljava/lang/String;
    .restart local v2       #header:Lorg/json/JSONObject;
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #stateCode:Ljava/lang/String;
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u4ea4\u6613\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4fe1\u7528\u5361\u662f\u5426\u6b63\u5e38\uff01"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 304
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #header:Lorg/json/JSONObject;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #stateCode:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #header:Lorg/json/JSONObject;
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #stateCode:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 308
    const-string v6, "\u5145\u503c\u5931\u8d25!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 309
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ub/main/account/RechargeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/ub/main/account/RechargeActivity;->doOrder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ub/main/account/RechargeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/ub/main/account/RechargeActivity;->pay_type:I

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/account/RechargeActivity;)Lcom/ub/main/data/CreditCardAccountInfo;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    return-object v0
.end method

.method private doOrder(Ljava/lang/String;)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 196
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->order_product_id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->moneyForRechare:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const-string v0, "\u4ea7\u54c1\u4fe1\u606f\u9519\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9\u5546\u54c1!"

    invoke-static {p0, v0}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_FOR_UBOX_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 201
    const-string v0, ""

    .line 202
    const-string v1, "1"

    new-array v2, v7, [[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 203
    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->order_product_id:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->moneyForRechare:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v3, v2, v5

    const-string v3, ""

    const-string v4, ""

    move-object v5, p1

    .line 201
    invoke-static/range {v0 .. v5}, Lcom/ub/main/util/NetConfig;->creatOrderPostString(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string v5, "\u6b63\u5728\u53d1\u9001\u5145\u503c\u8bf7\u6c42..."

    move-object v0, p0

    move-object v1, v6

    move-object v3, p0

    move-object v4, p0

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/RechargeActivity;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 132
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/account/RechargeActivity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lcom/ub/main/account/RechargeActivity;->finish()V

    .line 134
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_FOR_UBOX_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v0, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/account/RechargeActivity;->order_id:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orderID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/account/RechargeActivity;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget v0, p0, Lcom/ub/main/account/RechargeActivity;->pay_type:I

    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v0, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/ub/main/account/RechargeActivity;->EPOSPayResultProcess()V

    .line 382
    :cond_1
    :goto_1
    return-void

    .line 338
    :pswitch_0
    new-instance v0, Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 340
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 341
    invoke-virtual {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;->SetPayResultBehaviorListener(Lcom/ub/main/data/PayResultProcessListener;)V

    .line 343
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 344
    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->alixToolInstalledCheck()Z

    move-result v6

    .line 346
    .local v6, alixToolIsExist:Z
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    iget-object v1, p0, Lcom/ub/main/account/RechargeActivity;->order_id:Ljava/lang/String;

    const-string v2, "\u4f59\u989d\u5145\u503c"

    .line 347
    const-string v3, "\u4f59\u989d\u5145\u503c"

    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->moneyForRechare:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ub/main/util/alipay/AlixMainManager;->setOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, v6}, Lcom/ub/main/util/alipay/AlixMainManager;->makeOrderToAlix(Z)Z

    goto :goto_0

    .line 358
    .end local v6           #alixToolIsExist:Z
    :pswitch_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 359
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createPayByEposString(Ljava/lang/String;Lcom/ub/main/data/CreditCardAccountInfo;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-string v5, "\u6b63\u5728\u53d1\u9001\u5145\u503c\u8bf7\u6c42..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 358
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/RechargeActivity;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->RECHARGE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v0, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_3
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->NOT_EXIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v0, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 379
    const-string v1, "\u672a\u77e5\u9519\u8bef\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public XYKClick(Landroid/view/View;)V
    .locals 3
    .parameter "btn"

    .prologue
    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    const-string v1, "\u60a8\u786e\u8ba4\u8981\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/account/RechargeActivity$4;

    invoke-direct {v2, p0}, Lcom/ub/main/account/RechargeActivity$4;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 173
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/account/RechargeActivity$5;

    invoke-direct {v2, p0}, Lcom/ub/main/account/RechargeActivity$5;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 190
    return-void
.end method

.method public ZFClick(Landroid/view/View;)V
    .locals 3
    .parameter "btn"

    .prologue
    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    const-string v1, "\u60a8\u786e\u8ba4\u8981\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/account/RechargeActivity$2;

    invoke-direct {v2, p0}, Lcom/ub/main/account/RechargeActivity$2;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 150
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/account/RechargeActivity$3;

    invoke-direct {v2, p0}, Lcom/ub/main/account/RechargeActivity$3;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xc

    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v4, 0x7f03000a

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->setContentView(I)V

    .line 71
    const-string v4, "RechargeActivity"

    iput-object v4, p0, Lcom/ub/main/account/RechargeActivity;->TAG:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/ub/main/account/RechargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 73
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 74
    const-string v4, "money"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/account/RechargeActivity;->moneyForRechare:Ljava/lang/String;

    .line 77
    :cond_0
    const/high16 v4, 0x7f08

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 79
    .local v1, head:Landroid/view/ViewGroup;
    const v4, 0x7f0800e7

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    const-string v4, "\u53cb \u5b9d \u94b1 \u5305"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v4, 0x7f0800ed

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ub/main/account/RechargeActivity;->back:Landroid/widget/Button;

    .line 83
    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->back:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->back:Landroid/widget/Button;

    new-instance v5, Lcom/ub/main/account/RechargeActivity$1;

    invoke-direct {v5, p0}, Lcom/ub/main/account/RechargeActivity$1;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ub/main/account/RechargeActivity;->moneyForRechare:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v4, 0x7f080049

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 97
    const-string v7, "balance"

    invoke-virtual {v6, v7}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5143"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u542f\u52a8\u652f\u4ed8\u5b9d\u63a7\u4ef6"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget-object v4, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v4, :cond_1

    .line 107
    new-instance v4, Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-direct {v4}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    iput-object v4, p0, Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 108
    sget-object v4, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 109
    const-string v5, "pt_ActId"

    invoke-virtual {v4, v5}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_1

    .line 110
    sget-object v4, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 111
    const-string v5, "pt_ActId"

    .line 110
    invoke-virtual {v4, v5}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_1

    .line 112
    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    sget-object v5, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 113
    const-string v6, "pt_ActId"

    invoke-virtual {v5, v6}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v4}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, delete:Ljava/lang/String;
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/ub/main/account/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ub/main/account/RechargeActivity;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 116
    invoke-virtual {v5}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "******"

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0           #delete:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 257
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 263
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/ub/main/account/RechargeActivity;->finish()V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/ub/main/account/RechargeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :cond_0
    return v1
.end method

.method public payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "payChannelID"
    .parameter "behavorID"
    .parameter "param"
    .parameter "ObjectParam"

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 250
    .end local p4
    :goto_0
    return-void

    .line 215
    .restart local p4
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 217
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    const-string v1, "\u5145\u503c\u5931\u8d25!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 222
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    check-cast p4, Landroid/app/Activity;

    .end local p4
    invoke-direct {v0, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    const-string v1, "\u5145\u503c\u8bf7\u6c42\u5df2\u53d1\u9001\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    const-string v1, "\u786e\u5b9a"

    .line 226
    new-instance v2, Lcom/ub/main/account/RechargeActivity$6;

    invoke-direct {v2, p0}, Lcom/ub/main/account/RechargeActivity$6;-><init>(Lcom/ub/main/account/RechargeActivity;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
