.class public Lcom/ub/main/account/AccountBindPhone;
.super Lcom/ub/main/BaseActivity;
.source "AccountBindPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final ENTRANCE:Ljava/lang/String; = "entrance"

.field public static final MESSAGE_CODE:I = 0x44d

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final TAG:Ljava/lang/String; = "AccountBindPhone"

.field public static final TIMEOVER:I = 0x44e

.field public static final VIEW_TYPE:Ljava/lang/String; = "type"

.field private static final time:I = 0x3c


# instance fields
.field private back:Landroid/widget/Button;

.field private byType:B

.field private codeText:Landroid/widget/EditText;

.field private editText:Landroid/widget/EditText;

.field private entrance:I

.field private feet:Landroid/widget/LinearLayout;

.field handler:Landroid/os/Handler;

.field handler_sms:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private iTimer:I

.field private ib1:Landroid/widget/ImageButton;

.field private ib2:Landroid/widget/ImageButton;

.field private ib3:Landroid/widget/ImageButton;

.field private isRun:Z

.field private okButton:Landroid/widget/Button;

.field private overTextView:Landroid/widget/TextView;

.field private phone:Ljava/lang/String;

.field private register_succeeded:Z

.field private rightbutton:Landroid/widget/Button;

.field private sendButton:Landroid/widget/Button;

.field private strButtonChar:[Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 77
    iput-byte v4, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4fee\u6539\u7ed1\u5b9a\u624b\u673a\u53f7"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    aput-object v2, v0, v1

    const-string v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "\u91cd\u65b0\u53d1\u9001\u9a8c\u8bc1\u7801"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u60a8\u672a\u7ed1\u5b9a\u624b\u673a\u53f7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u91cd\u53d1\u77ed\u4fe1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->phone:Ljava/lang/String;

    .line 110
    iput v3, p0, Lcom/ub/main/account/AccountBindPhone;->entrance:I

    .line 111
    iput-boolean v3, p0, Lcom/ub/main/account/AccountBindPhone;->register_succeeded:Z

    .line 344
    new-instance v0, Lcom/ub/main/account/AccountBindPhone$1;

    invoke-direct {v0, p0}, Lcom/ub/main/account/AccountBindPhone$1;-><init>(Lcom/ub/main/account/AccountBindPhone;)V

    iput-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->handler:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/ub/main/account/AccountBindPhone$2;

    invoke-direct {v0, p0}, Lcom/ub/main/account/AccountBindPhone$2;-><init>(Lcom/ub/main/account/AccountBindPhone;)V

    iput-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->handler_sms:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method private BindPhoneRequest()V
    .locals 7

    .prologue
    const/16 v2, 0xbb8

    .line 462
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->codeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 463
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801\uff01"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 479
    :goto_0
    return-void

    .line 468
    :cond_0
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 470
    .local v6, pwd:Landroid/widget/EditText;
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    const-string v0, "\u7528\u6237\u5bc6\u7801\u4e0d\u6b63\u786e\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 475
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_PHONE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 476
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone;->codeText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createBindPhonePostString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    const-string v5, "\u6b63\u5728\u7ed1\u5b9a\u624b\u673a..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 475
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/AccountBindPhone;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Send()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 382
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, temp:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 384
    :cond_0
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\uff01"

    const/16 v2, 0xbb8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 433
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->phone:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    iput-byte v4, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    .line 391
    const/16 v1, 0x3c

    iput v1, p0, Lcom/ub/main/account/AccountBindPhone;->iTimer:I

    .line 392
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 393
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->codeText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 395
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->okButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ub/main/account/AccountBindPhone;->isRun:Z

    .line 398
    new-instance v1, Lcom/ub/main/account/AccountBindPhone$4;

    invoke-direct {v1, p0}, Lcom/ub/main/account/AccountBindPhone$4;-><init>(Lcom/ub/main/account/AccountBindPhone;)V

    .line 431
    invoke-virtual {v1}, Lcom/ub/main/account/AccountBindPhone$4;->start()V

    .line 432
    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->phone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ub/main/account/AccountBindPhone;->SendGetPhoneVertifyRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SendGetPhoneVertifyRequest(Ljava/lang/String;)V
    .locals 5
    .parameter "phone"

    .prologue
    .line 452
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindPhone;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 453
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindPhone;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 454
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/ub/main/util/NetConfig;->createGetVertifyPhoneString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 456
    .local v1, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    .line 458
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/account/AccountBindPhone;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/account/AccountBindPhone;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/account/AccountBindPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/ub/main/account/AccountBindPhone;->iTimer:I

    return v0
.end method

.method static synthetic access$3(Lcom/ub/main/account/AccountBindPhone;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/account/AccountBindPhone;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/account/AccountBindPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/ub/main/account/AccountBindPhone;->isRun:Z

    return v0
.end method

.method static synthetic access$6(Lcom/ub/main/account/AccountBindPhone;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/ub/main/account/AccountBindPhone;->iTimer:I

    return-void
.end method

.method static synthetic access$7(Lcom/ub/main/account/AccountBindPhone;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/ub/main/account/AccountBindPhone;->isRun:Z

    return-void
.end method

.method static synthetic access$8(Lcom/ub/main/account/AccountBindPhone;)B
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-byte v0, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    return v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    return-void
.end method

.method private initModel()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/account/AccountBindPhone;->isRun:Z

    .line 255
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ub/main/account/AccountBindPhone;->iTimer:I

    .line 256
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    const v10, 0x7f080025

    const/4 v7, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 127
    const v5, 0x7f080016

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->head:Landroid/view/ViewGroup;

    .line 128
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->head:Landroid/view/ViewGroup;

    const v6, 0x7f0800ed

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->back:Landroid/widget/Button;

    .line 129
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->back:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->head:Landroid/view/ViewGroup;

    const v6, 0x7f0800ee

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    .line 132
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->head:Landroid/view/ViewGroup;

    const v6, 0x7f0800e7

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->title:Landroid/widget/TextView;

    .line 133
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->title:Landroid/widget/TextView;

    const-string v6, "\u4fee\u6539\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v5, 0x7f080018

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    const v5, 0x7f08001b

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    .line 140
    const v5, 0x7f080021

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->okButton:Landroid/widget/Button;

    .line 141
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    const v5, 0x7f08001a

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    .line 143
    const v5, 0x7f08001e

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->codeText:Landroid/widget/EditText;

    .line 144
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 145
    const v5, 0x7f08001f

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 146
    const v5, 0x7f080023

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->textView:Landroid/widget/TextView;

    .line 147
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    const v5, 0x7f080024

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->overTextView:Landroid/widget/TextView;

    .line 149
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->overTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindPhone;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 159
    const-string v5, "entrance"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    iput v5, p0, Lcom/ub/main/account/AccountBindPhone;->entrance:I

    .line 161
    iget v5, p0, Lcom/ub/main/account/AccountBindPhone;->entrance:I

    packed-switch v5, :pswitch_data_0

    .line 247
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v0       #bundle:Landroid/os/Bundle;
    :pswitch_0
    const/4 v5, 0x4

    iput-byte v5, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6211\u4eec\u5df2\u7ecf\u5411\u624b\u673a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "phone_number"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u53d1\u9001\u4e86\u4e00\u5929\u9a8c\u8bc1\u7801\u7684\u77ed\u4fe1\uff0c\u8bf7\u8f93\u5165\u60a8\u6536\u5230\u7684\u9a8c\u8bc1\u7801\u5b8c\u6210\u6ce8\u518c\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    const-string v6, "\u5b8c\u6210\u6ce8\u518c"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    const-string v6, "\u91cd\u53d1\u77ed\u4fe1"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->title:Landroid/widget/TextView;

    const-string v6, "\u5b8c\u6210\u6ce8\u518c"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ub/main/account/AccountBindPhone;->isRun:Z

    .line 176
    new-instance v5, Lcom/ub/main/account/AccountBindPhone$3;

    invoke-direct {v5, p0}, Lcom/ub/main/account/AccountBindPhone$3;-><init>(Lcom/ub/main/account/AccountBindPhone;)V

    .line 200
    invoke-virtual {v5}, Lcom/ub/main/account/AccountBindPhone$3;->start()V

    goto :goto_0

    .line 203
    .end local v4           #text:Ljava/lang/String;
    :pswitch_1
    const/4 v5, 0x5

    iput-byte v5, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6211\u4eec\u5df2\u7ecf\u5411\u90ae\u7bb1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "phone_number"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u53d1\u9001\u4e86\u4e00\u6761\u9a8c\u8bc1\u7801\uff0c\u8bf7\u8f93\u5165\u60a8\u6536\u5230\u7684\u9a8c\u8bc1\u7801\u5b8c\u6210\u6ce8\u518c\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, mailtext:Ljava/lang/String;
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 207
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 209
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    const-string v6, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->textView:Landroid/widget/TextView;

    const v6, 0x7f060008

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    const-string v6, "\u8df3\u8fc7"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->rightbutton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->title:Landroid/widget/TextView;

    const-string v6, "\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 219
    .end local v2           #mailtext:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 220
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iput-byte v7, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    .line 224
    const-string v5, "phone_number"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, phone:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    :cond_1
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    const-string v6, "\u60a8\u8fd8\u672a\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-virtual {p0, v10}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 230
    :cond_2
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v5, p0, Lcom/ub/main/account/AccountBindPhone;->txt:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    invoke-virtual {p0, v10}, Lcom/ub/main/account/AccountBindPhone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 503
    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_PHONE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v0, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    :goto_0
    return-void

    .line 507
    :cond_0
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v0, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 515
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/account/AccountBindPhone$5;

    invoke-direct {v2, p0}, Lcom/ub/main/account/AccountBindPhone$5;-><init>(Lcom/ub/main/account/AccountBindPhone;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 342
    :goto_0
    :pswitch_0
    return-void

    .line 275
    :sswitch_0
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindPhone;->finish()V

    goto :goto_0

    .line 278
    :sswitch_1
    iget-byte v0, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 306
    :sswitch_2
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->BindPhoneRequest()V

    goto :goto_0

    .line 310
    :sswitch_3
    iget-byte v0, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iput-byte v2, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->sendButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindPhone;->strButtonChar:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iput-byte v2, p0, Lcom/ub/main/account/AccountBindPhone;->byType:B

    .line 320
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    const-string v1, "\u624b\u673a\u53f7:"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/ub/main/account/AccountBindPhone;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 327
    :pswitch_3
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->Send()V

    goto :goto_0

    .line 331
    :pswitch_4
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->Send()V

    goto :goto_0

    .line 337
    :pswitch_5
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->Send()V

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x7f08001b -> :sswitch_3
        0x7f080021 -> :sswitch_2
        0x7f0800ed -> :sswitch_0
        0x7f0800ee -> :sswitch_1
    .end sparse-switch

    .line 278
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountBindPhone;->setContentView(I)V

    .line 117
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->initModel()V

    .line 118
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->initView()V

    .line 119
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindPhone;->initControl()V

    .line 120
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindPhone;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :cond_0
    return v1
.end method
