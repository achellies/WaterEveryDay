.class public Lcom/ub/main/account/AccountBindCreditCard;
.super Lcom/ub/main/BaseActivity;
.source "AccountBindCreditCard.java"


# static fields
.field private static final CREDITCARD:I = 0x1

.field private static final ZHIFUBAO:I


# instance fields
.field private account:Lcom/ub/main/data/CreditCardAccountInfo;

.field private accountType:I

.field private back:Landroid/widget/Button;

.field private bankID:I

.field private cardIDEditor:Landroid/widget/EditText;

.field private dbHelper:Lcom/ub/main/util/SqlDbHelper;

.field private dlg:Landroid/app/ProgressDialog;

.field private firstEditor:Landroid/widget/EditText;

.field ib1:Landroid/widget/ImageButton;

.field ib2:Landroid/widget/ImageButton;

.field ib3:Landroid/widget/ImageButton;

.field private listView:Landroid/widget/ListView;

.field private monthEditor:Landroid/widget/EditText;

.field private nameEditor:Landroid/widget/EditText;

.field private phoneEditor:Landroid/widget/EditText;

.field private secondEditor:Landroid/widget/EditText;

.field private yearEditor:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 47
    iput v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->back:Landroid/widget/Button;

    .line 84
    iput v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->bankID:I

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/account/AccountBindCreditCard;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/ub/main/account/AccountBindCreditCard;->bankID:I

    return-void
.end method

.method static synthetic access$1(Lcom/ub/main/account/AccountBindCreditCard;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->bankID:I

    return v0
.end method

.method private errorNotice()Z
    .locals 7

    .prologue
    const/16 v6, 0x4e20

    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, isRight:Z
    const-string v1, ""

    .line 277
    .local v1, errMsg:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->firstEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->firstEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    .line 279
    :cond_0
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u4fe1\u7528\u5361\u53f7\uff01"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    if-nez v2, :cond_1

    .line 305
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_1
    move v3, v2

    .line 308
    .end local v2           #isRight:Z
    .local v3, isRight:I
    :goto_1
    return v3

    .line 280
    .end local v3           #isRight:I
    .restart local v2       #isRight:Z
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->monthEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_3

    .line 281
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->monthEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_4

    .line 282
    :cond_3
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u6708\u4efd\uff01"

    goto :goto_0

    .line 283
    :cond_4
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->yearEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x7db

    if-lt v4, v5, :cond_5

    .line 284
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->yearEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x833

    if-le v4, v5, :cond_6

    .line 285
    :cond_5
    const-string v1, "\u8bf7\u8f93\u51652011-2099\u7684\u5e74\u4efd\uff01"

    goto :goto_0

    .line 286
    :cond_6
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->secondEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_7

    .line 287
    const-string v1, "\u4fe1\u7528\u5361\u672b\u5c3e\u81f3\u5c113\u4f4d\uff01"

    goto :goto_0

    .line 288
    :cond_7
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->cardIDEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-ge v4, v5, :cond_8

    .line 289
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8eab\u4efd\u8bc1\u53f7\uff01"

    goto/16 :goto_0

    .line 290
    :cond_8
    const-string v4, "^[\u4e00-\u9fa5]|[A-Za-z]|[\u4e00-\u9fa5-A-Za-z]+$"

    iget-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->nameEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ub/main/util/Tool;->matchingText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 291
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u59d3\u540d\uff01"

    goto/16 :goto_0

    .line 292
    :cond_9
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->phoneEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 293
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 295
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 299
    const-string v1, "\u6708\u4efd\u548c\u5e74\u4efd\u5fc5\u987b\u4e3a\u6570\u5b57\uff01"

    .line 300
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v3, v2

    .line 301
    .restart local v3       #isRight:I
    goto/16 :goto_1
.end method

.method private initMonthYearEditor()V
    .locals 1

    .prologue
    .line 245
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->yearEditor:Landroid/widget/EditText;

    .line 249
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->monthEditor:Landroid/widget/EditText;

    .line 251
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindCreditCard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 128
    const-string v5, "type"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    .line 131
    :cond_0
    const v5, 0x7f08000a

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->firstEditor:Landroid/widget/EditText;

    .line 132
    const v5, 0x7f080011

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->secondEditor:Landroid/widget/EditText;

    .line 135
    iget v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    if-ne v5, v7, :cond_1

    .line 136
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, img:Landroid/widget/ImageView;
    const v5, 0x7f0200c6

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 140
    .local v3, line:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 142
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 145
    .local v4, textView:Landroid/widget/TextView;
    const-string v5, "\u5361       \u53f7\uff1a "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v5, 0x7f080010

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 147
    .restart local v4       #textView:Landroid/widget/TextView;
    const-string v5, "\u672b\u4e09\u4f4d\u6570\uff1a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const-string v6, "\u7ed1\u5b9a\u4fe1\u7528\u5361"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v5, 0x7f080012

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->nameEditor:Landroid/widget/EditText;

    .line 152
    const v5, 0x7f080013

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->cardIDEditor:Landroid/widget/EditText;

    .line 153
    const v5, 0x7f080014

    invoke-virtual {p0, v5}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->phoneEditor:Landroid/widget/EditText;

    .line 155
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindCreditCard;->initMonthYearEditor()V

    .line 158
    .end local v0           #img:Landroid/widget/ImageView;
    .end local v2           #layout:Landroid/widget/LinearLayout;
    .end local v3           #line:Landroid/widget/ImageView;
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/ub/main/account/AccountBindCreditCard;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindCreditCard;->finish()V

    .line 220
    return-void
.end method

.method public BankSelect(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 255
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u94f6\u884c\u9009\u62e9"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    sget-object v2, Lcom/ub/main/util/UIConfig;->bankList:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Lcom/ub/main/account/AccountBindCreditCard$2;

    invoke-direct {v3, p0}, Lcom/ub/main/account/AccountBindCreditCard$2;-><init>(Lcom/ub/main/account/AccountBindCreditCard;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 264
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 265
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
    const/4 v6, 0x0

    .line 314
    const-string v4, "200"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, _message:Ljava/lang/String;
    iget-object v4, p0, Lcom/ub/main/account/AccountBindCreditCard;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, code:Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    const-string v4, "\u4fe1\u7528\u5361\u4fe1\u606f\u6dfb\u52a0\u8bf7\u6c42\u5df2\u53d1\u9001 !!!"

    invoke-static {p0, v4}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, isHave:Z
    :cond_0
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 330
    :goto_0
    if-nez v2, :cond_1

    .line 331
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1
    iput-object v6, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 335
    .end local v2           #isHave:Z
    :cond_2
    invoke-virtual {p0, v6}, Lcom/ub/main/account/AccountBindCreditCard;->BackTolastActivity(Landroid/view/View;)V

    .line 347
    .end local v0           #_message:Ljava/lang/String;
    .end local v1           #code:Ljava/lang/String;
    :goto_1
    return-void

    .line 323
    .restart local v0       #_message:Ljava/lang/String;
    .restart local v1       #code:Ljava/lang/String;
    .restart local v2       #isHave:Z
    :cond_3
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/data/CreditCardAccountInfo;

    .line 324
    .local v3, temp:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-virtual {v3}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v5}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    const/4 v2, 0x1

    .line 327
    goto :goto_0

    .line 339
    .end local v2           #isHave:Z
    .end local v3           #temp:Lcom/ub/main/data/CreditCardAccountInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindCreditCard;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "\u4fe1\u7528\u5361\u4fe1\u606f\u6dfb\u52a0\u5931\u8d25\uff0c\u8bf7\u4ed4\u7ec6\u6838\u5bf9\u8d26\u53f7\u4fe1\u606f\uff01"

    invoke-static {v4, v5}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    .end local v0           #_message:Ljava/lang/String;
    .end local v1           #code:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindCreditCard;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "\u4fe1\u7528\u5361\u4fe1\u606f\u6dfb\u52a0\u5931\u8d25\uff0c\u8bf7\u4ed4\u7ec6\u6838\u5bf9\u8d26\u53f7\u4fe1\u606f\uff01"

    invoke-static {v4, v5}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    iput-object v6, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    goto :goto_1
.end method

.method public btnOnClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    .local v7, success:Z
    iget v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    if-nez v0, :cond_1

    .line 163
    new-instance v6, Lcom/ub/main/data/AlipayAccountInfo;

    invoke-direct {v6}, Lcom/ub/main/data/AlipayAccountInfo;-><init>()V

    .line 164
    .local v6, account:Lcom/ub/main/data/AlipayAccountInfo;
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->firstEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ub/main/data/AlipayAccountInfo;->setAccount(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->secondEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ub/main/data/AlipayAccountInfo;->setPassWord(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6, v3}, Lcom/ub/main/data/AlipayAccountInfo;->setDefault(I)V

    .line 168
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->dbHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v0}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 169
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->dbHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v0, v6}, Lcom/ub/main/util/SqlDbHelper;->insertZFB_Account(Lcom/ub/main/data/AlipayAccountInfo;)Z

    move-result v7

    .line 170
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->dbHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v0}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 209
    .end local v6           #account:Lcom/ub/main/data/AlipayAccountInfo;
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindCreditCard;->errorNotice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-direct {v0}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    iput-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 178
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->firstEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->cardIDEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardId(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    iget v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->bankID:I

    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setBank(I)V

    .line 181
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->nameEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setName(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->phoneEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setPhone(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->monthEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->yearEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setEffcetiveTime(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    iget-object v1, p0, Lcom/ub/main/account/AccountBindCreditCard;->secondEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/CreditCardAccountInfo;->setLastThreeCode(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v0, v3}, Lcom/ub/main/data/CreditCardAccountInfo;->setDefault(I)V

    .line 189
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->ADD_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 190
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatNewCreditCardPostString(Lcom/ub/main/data/CreditCardAccountInfo;)Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v5, "\u6b63\u5728\u53d1\u9001\u6dfb\u52a0\u4fe1\u7528\u5361\u8bf7\u6c42..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/AccountBindCreditCard;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/ub/main/account/AccountBindCreditCard;->setContentView(I)V

    .line 100
    new-instance v2, Lcom/ub/main/util/SqlDbHelper;

    invoke-direct {v2, p0}, Lcom/ub/main/util/SqlDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->dbHelper:Lcom/ub/main/util/SqlDbHelper;

    .line 102
    invoke-direct {p0}, Lcom/ub/main/account/AccountBindCreditCard;->initView()V

    .line 104
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->back:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->back:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    if-nez v2, :cond_1

    .line 110
    const-string v2, "\u652f\u4ed8\u5b9d\u8d26\u6237\u7ed1\u5b9a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->back:Landroid/widget/Button;

    new-instance v3, Lcom/ub/main/account/AccountBindCreditCard$1;

    invoke-direct {v3, p0}, Lcom/ub/main/account/AccountBindCreditCard$1;-><init>(Lcom/ub/main/account/AccountBindCreditCard;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void

    .line 111
    :cond_1
    iget v2, p0, Lcom/ub/main/account/AccountBindCreditCard;->accountType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 112
    const-string v2, "\u4fe1\u7528\u5361\u8d26\u6237\u7ed1\u5b9a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountBindCreditCard;->BackTolastActivity(Landroid/view/View;)V

    .line 227
    const/4 v0, 0x1

    .line 230
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

    .line 236
    invoke-virtual {p0}, Lcom/ub/main/account/AccountBindCreditCard;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :cond_0
    return v1
.end method
