.class public Lcom/ub/main/login/RegisterUI;
.super Lcom/ub/main/BaseActivity;
.source "RegisterUI.java"


# instance fields
.field private back:Landroid/widget/Button;

.field private entrance:I

.field private info_1:Landroid/widget/TextView;

.field private info_2:Landroid/widget/TextView;

.field private loginDialog:Landroid/app/ProgressDialog;

.field private sendMessage:Landroid/content/BroadcastReceiver;

.field private submitBT:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->submitBT:Landroid/widget/Button;

    .line 49
    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->info_1:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->info_2:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->back:Landroid/widget/Button;

    .line 76
    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->loginDialog:Landroid/app/ProgressDialog;

    .line 131
    new-instance v0, Lcom/ub/main/login/RegisterUI$1;

    invoke-direct {v0, p0}, Lcom/ub/main/login/RegisterUI$1;-><init>(Lcom/ub/main/login/RegisterUI;)V

    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->sendMessage:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method private gotoActivity()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 105
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_CHANNELINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 106
    invoke-static {}, Lcom/ub/main/util/NetConfig;->creatRegisterInfoPostString()Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6ce8\u518c\u901a\u9053..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/login/RegisterUI;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/login/RegisterUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 112
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Lcom/ub/main/login/RegisterUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/RegisterUI;->back:Landroid/widget/Button;

    .line 113
    iget-object v2, p0, Lcom/ub/main/login/RegisterUI;->back:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/ub/main/login/RegisterUI;->back:Landroid/widget/Button;

    const-string v3, "\u8fd4\u56de"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    const-string v2, "\u77ed\u4fe1\u6ce8\u518c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v2, 0x7f0800fd

    invoke-virtual {p0, v2}, Lcom/ub/main/login/RegisterUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/login/RegisterUI;->info_1:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0800fe

    invoke-virtual {p0, v2}, Lcom/ub/main/login/RegisterUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/login/RegisterUI;->info_2:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f0800ff

    invoke-virtual {p0, v2}, Lcom/ub/main/login/RegisterUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/login/RegisterUI;->submitBT:Landroid/widget/Button;

    .line 125
    invoke-direct {p0}, Lcom/ub/main/login/RegisterUI;->setClickListener()V

    .line 128
    iget-object v2, p0, Lcom/ub/main/login/RegisterUI;->sendMessage:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "SENT_SMS_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/ub/main/login/RegisterUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method private setClickListener()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI;->submitBT:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/RegisterUI$2;

    invoke-direct {v1, p0}, Lcom/ub/main/login/RegisterUI$2;-><init>(Lcom/ub/main/login/RegisterUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI;->back:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/login/RegisterUI$3;

    invoke-direct {v1, p0}, Lcom/ub/main/login/RegisterUI$3;-><init>(Lcom/ub/main/login/RegisterUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 237
    const-string v3, "200"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/ub/main/login/RegisterUI;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "sNO"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, registChannelCode:Ljava/lang/String;
    iget-object v3, p0, Lcom/ub/main/login/RegisterUI;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "sConent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, registConent:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    sput-object v0, Lcom/ub/main/util/NetConfig;->REGIST_CHANNEL_CODE:Ljava/lang/String;

    .line 245
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    sput-object v1, Lcom/ub/main/util/NetConfig;->REGIST_CHANNEL_CONENT:Ljava/lang/String;

    .line 288
    .end local v0           #registChannelCode:Ljava/lang/String;
    .end local v1           #registConent:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v2, temp:Ljava/lang/StringBuffer;
    const-string v3, "\u53d1\u9001\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    sget-object v3, Lcom/ub/main/util/NetConfig;->REGIST_CHANNEL_CONENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v3, "\' \u5230 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    sget-object v3, Lcom/ub/main/util/NetConfig;->REGIST_CHANNEL_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v3, " \u5373\u53ef\u6210\u529f\u6ce8\u518c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    iget-object v3, p0, Lcom/ub/main/login/RegisterUI;->info_1:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/ub/main/login/RegisterUI;->info_1:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/ub/main/login/RegisterUI;->info_2:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 297
    iget-object v3, p0, Lcom/ub/main/login/RegisterUI;->info_2:Landroid/widget/TextView;

    const-string v4, "\u8fd0\u8425\u5546\u6536\u53d6\u77ed\u4fe1\u8d39\u75280.1\u5143/\u6761\uff0c\u65e0\u989d\u5916\u8d39\u7528"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_3
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v0, 0x65

    .line 227
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    if-ne p2, v0, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterUI;->setResult(I)V

    .line 230
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterUI;->finish()V

    .line 232
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "RegisterUI"

    iput-object v0, p0, Lcom/ub/main/login/RegisterUI;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterUI;->requestWindowFeature(I)Z

    .line 87
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterUI;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/ub/main/login/RegisterUI;->initData()V

    .line 89
    invoke-direct {p0}, Lcom/ub/main/login/RegisterUI;->initView()V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 303
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->submitBT:Landroid/widget/Button;

    .line 308
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->loginDialog:Landroid/app/ProgressDialog;

    .line 309
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->httpStack:Lcom/ub/main/net/HttpStack;

    .line 310
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->back:Landroid/widget/Button;

    .line 311
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->info_1:Landroid/widget/TextView;

    .line 312
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->info_2:Landroid/widget/TextView;

    .line 313
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI;->sendMessage:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ub/main/login/RegisterUI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iput-object v1, p0, Lcom/ub/main/login/RegisterUI;->sendMessage:Landroid/content/BroadcastReceiver;

    .line 315
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 316
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 216
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/ub/main/login/RegisterUI;->finish()V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCityETText(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 211
    return-void
.end method
