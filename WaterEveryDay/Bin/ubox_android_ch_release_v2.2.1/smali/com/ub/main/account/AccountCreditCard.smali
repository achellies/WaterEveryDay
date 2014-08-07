.class public Lcom/ub/main/account/AccountCreditCard;
.super Lcom/ub/main/BaseActivity;
.source "AccountCreditCard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final CREDITCARD:I = 0x1

.field public static final MAX_ACCOUNT_COUNT:I = 0x5

.field private static final TYPENAME:Ljava/lang/String; = "type"

.field private static final ZHIFUBAO:I = 0x0

.field private static final lineId:[I = null

.field private static final textId:[I = null

.field private static final xykBangding:Ljava/lang/String; = "\u8d26\u6237\u5df2\u6709\u7ed1\u5b9a\u4fe1\u7528\u5361"

.field private static final xykNotBangding:Ljava/lang/String; = "\u672a\u7ed1\u5b9a\u4fe1\u7528\u5361\u8d26\u6237"

.field private static final zfbBangding:Ljava/lang/String; = "\u5df2\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u8d26\u6237"

.field private static final zfbNotBangding:Ljava/lang/String; = "\u672a\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u8d26\u6237"


# instance fields
.field private accountType:I

.field dpHelper:Lcom/ub/main/util/SqlDbHelper;

.field private tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

.field private xykList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/CreditCardAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zfbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/AlipayAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ub/main/account/AccountCreditCard;->textId:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ub/main/account/AccountCreditCard;->lineId:[I

    .line 42
    return-void

    .line 58
    :array_0
    .array-data 0x4
        0x38t 0x0t 0x8t 0x7ft
        0x3at 0x0t 0x8t 0x7ft
        0x3ct 0x0t 0x8t 0x7ft
        0x3et 0x0t 0x8t 0x7ft
        0x40t 0x0t 0x8t 0x7ft
    .end array-data

    .line 60
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x39t 0x0t 0x8t 0x7ft
        0x3bt 0x0t 0x8t 0x7ft
        0x3dt 0x0t 0x8t 0x7ft
        0x3ft 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/account/AccountCreditCard;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/ub/main/account/AccountCreditCard;->setDefaultAccount(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/ub/main/account/AccountCreditCard;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/ub/main/account/AccountCreditCard;->deleteAccount(I)V

    return-void
.end method

.method private deleteAccount(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 439
    iget v4, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    if-nez v4, :cond_4

    .line 440
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 442
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v4}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 443
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/AlipayAccountInfo;

    .line 444
    .local v0, account:Lcom/ub/main/data/AlipayAccountInfo;
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v0}, Lcom/ub/main/data/AlipayAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ub/main/util/SqlDbHelper;->deleteZFB_Account(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/ub/main/data/AlipayAccountInfo;->getDefault()I

    move-result v4

    if-ne v6, v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 448
    const/4 p1, 0x0

    .line 450
    :cond_0
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    check-cast v0, Lcom/ub/main/data/AlipayAccountInfo;

    .line 451
    .restart local v0       #account:Lcom/ub/main/data/AlipayAccountInfo;
    invoke-virtual {v0, v6}, Lcom/ub/main/data/AlipayAccountInfo;->setDefault(I)V

    .line 452
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v4, v0}, Lcom/ub/main/util/SqlDbHelper;->updateZFB_Account(Lcom/ub/main/data/AlipayAccountInfo;)Z

    .line 457
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v4}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 585
    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->initView()V

    .line 586
    return-void

    .line 455
    .restart local v0       #account:Lcom/ub/main/data/AlipayAccountInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5220\u9664\u8d26\u6237\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ub/main/data/AlipayAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 460
    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    :cond_4
    iget v4, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    if-ne v4, v6, :cond_2

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, count:I
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 464
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 466
    :cond_5
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 467
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 470
    :cond_6
    if-le v1, p1, :cond_2

    .line 476
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_8

    .line 477
    :cond_7
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .line 556
    .local v0, account:Lcom/ub/main/data/CreditCardAccountInfo;
    :goto_2
    iput-object v0, p0, Lcom/ub/main/account/AccountCreditCard;->tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 559
    new-instance v2, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 560
    .local v2, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v3, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/ub/main/util/NetConfig$HttpRequestId;->DELETE_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 561
    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatDeletCreditCardPostString(Lcom/ub/main/data/CreditCardAccountInfo;)Ljava/lang/String;

    move-result-object v6

    .line 560
    invoke-direct {v3, v4, v5, v6, v2}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 563
    .local v3, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v3}, Lcom/ub/main/net/HttpStack;->start()V

    .line 564
    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->dismissLoadingDialog()V

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6b63\u5728\u5220\u9664\u4fe1\u7528\u5361\u8d26\u6237\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p0, v4}, Lcom/ub/main/account/AccountCreditCard;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    .end local v2           #httpHandler:Lcom/ub/main/net/HttpHandler;
    .end local v3           #httpStack:Lcom/ub/main/net/HttpStack;
    :cond_8
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_a

    .line 496
    :cond_9
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto :goto_2

    .line 515
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    :cond_a
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_b

    .line 516
    sget-object v4, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto :goto_2

    .line 535
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    :cond_b
    iget-object v4, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto :goto_2
.end method

.method private initView()V
    .locals 15

    .prologue
    .line 150
    iget v12, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 151
    const v12, 0x7f080035

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f0200c6

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 152
    const v12, 0x7f080042

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 154
    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_3

    .line 155
    :cond_0
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_3

    .line 156
    :cond_1
    const v12, 0x7f080041

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const v12, 0x7f080043

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v12, 0x7f080037

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 160
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const-string v13, "\u7ed1\u5b9a\u4e00\u5f20\u4fe1\u7528\u5361"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v12, 0x7f080025

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v12, 0x7f080036

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "\u672a\u7ed1\u5b9a\u4fe1\u7528\u5361\u8d26\u6237"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    const v12, 0x7f080041

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const v12, 0x7f080041

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "\"\u88ab\u52fe\u9009\u7684\u4e3a\u9ed8\u8ba4\u4fe1\u7528\u5361\u8d26\u6237\""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v12, 0x7f080043

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const-string v13, "\u7ed1\u5b9a\u4e00\u5f20\u4fe1\u7528\u5361"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const v12, 0x7f080037

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const v12, 0x7f080036

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 170
    .local v9, tv:Landroid/widget/TextView;
    const-string v12, "\u8d26\u6237\u5df2\u6709\u7ed1\u5b9a\u4fe1\u7528\u5361"

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f04000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    const-string v10, "0"

    .line 184
    .local v10, userCreitCardNumber:Ljava/lang/String;
    sget-object v12, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v12, :cond_4

    .line 185
    sget-object v12, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v13, "pt_ActId"

    invoke-virtual {v12, v13}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 195
    :cond_4
    const/4 v4, 0x0

    .line 196
    .local v4, count:I
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 197
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 199
    :cond_5
    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    .line 200
    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v4, v12

    .line 202
    :cond_6
    const/4 v12, 0x5

    if-lt v4, v12, :cond_8

    .line 203
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v12, 0x7f080025

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    const/4 v12, 0x5

    if-ge v5, v12, :cond_2

    .line 210
    if-ge v5, v4, :cond_c

    .line 212
    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_9

    .line 213
    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .line 219
    .local v0, account:Lcom/ub/main/data/CreditCardAccountInfo;
    :goto_3
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->lineId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 220
    .local v7, line:Landroid/widget/ImageView;
    if-eqz v7, :cond_7

    .line 221
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    const/4 v7, 0x0

    .line 225
    :cond_7
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->textId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 226
    .local v6, layout:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 230
    const v12, 0x7f080052

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 231
    .local v8, textView:Landroid/widget/TextView;
    const/high16 v12, 0x4160

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 232
    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getBank()I

    move-result v2

    .line 233
    .local v2, bankIndex:I
    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, bank:Ljava/lang/String;
    sget-object v12, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_a

    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u5f85\u9a8c\u8bc1  "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/ub/main/util/UIConfig;->bankList:[[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "****"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_4
    const v12, 0x7f080053

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 242
    .local v3, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 244
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    .end local v1           #bank:Ljava/lang/String;
    .end local v2           #bankIndex:I
    .end local v3           #check:Landroid/widget/CheckBox;
    .end local v6           #layout:Landroid/widget/LinearLayout;
    .end local v7           #line:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 206
    .end local v5           #i:I
    :cond_8
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const v12, 0x7f080025

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 215
    .restart local v5       #i:I
    :cond_9
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    sget-object v13, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v5, v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto/16 :goto_3

    .line 238
    .restart local v1       #bank:Ljava/lang/String;
    .restart local v2       #bankIndex:I
    .restart local v6       #layout:Landroid/widget/LinearLayout;
    .restart local v7       #line:Landroid/widget/ImageView;
    .restart local v8       #textView:Landroid/widget/TextView;
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/ub/main/util/UIConfig;->bankList:[[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aget-object v13, v13, v2

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "****"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 249
    .restart local v3       #check:Landroid/widget/CheckBox;
    :cond_b
    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 250
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 253
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    .end local v1           #bank:Ljava/lang/String;
    .end local v2           #bankIndex:I
    .end local v3           #check:Landroid/widget/CheckBox;
    .end local v6           #layout:Landroid/widget/LinearLayout;
    .end local v7           #line:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    :cond_c
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->lineId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 254
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->textId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 258
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v9           #tv:Landroid/widget/TextView;
    .end local v10           #userCreitCardNumber:Ljava/lang/String;
    :cond_d
    iget v12, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    if-nez v12, :cond_2

    .line 260
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_f

    .line 261
    :cond_e
    const v12, 0x7f080041

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 262
    const v12, 0x7f080043

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const v12, 0x7f080037

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const-string v13, "\u7ed1\u5b9a"

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const v12, 0x7f080025

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v12, 0x7f080036

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "\u672a\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u8d26\u6237"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    :cond_f
    const v12, 0x7f080041

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const v12, 0x7f080043

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const v12, 0x7f080037

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const v12, 0x7f080036

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 274
    .restart local v9       #tv:Landroid/widget/TextView;
    const-string v12, "\u5df2\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u8d26\u6237"

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f04000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 283
    .restart local v4       #count:I
    const/4 v12, 0x5

    if-lt v4, v12, :cond_11

    .line 284
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 285
    const v12, 0x7f080025

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 286
    .local v11, view:Landroid/widget/TextView;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const-string v12, "\u6700\u591a\u53ea\u80fd\u7ed1\u5b9a5\u4e2a\u4fe1\u7528\u5361\u8d26\u6237\u3002\u5982\u679c\u8981\u7ed1\u5b9a\u5176\u4ed6\u4fe1\u7528\u5361\u8d26\u6237\uff0c\u8bf7\u5220\u9664\u4e00\u4e2a\u5df2\u7ed1\u5b9a\u7684\u4fe1\u7528\u5361\u8d26\u6237"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .end local v11           #view:Landroid/widget/TextView;
    :goto_6
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_7
    const/4 v12, 0x5

    if-ge v5, v12, :cond_2

    .line 293
    if-ge v5, v4, :cond_14

    .line 294
    iget-object v12, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/AlipayAccountInfo;

    .line 296
    .local v0, account:Lcom/ub/main/data/AlipayAccountInfo;
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->lineId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 297
    .restart local v7       #line:Landroid/widget/ImageView;
    if-eqz v7, :cond_10

    .line 298
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    const/4 v7, 0x0

    .line 302
    :cond_10
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->textId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 303
    .restart local v6       #layout:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 307
    const v12, 0x7f080052

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 308
    .restart local v8       #textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/ub/main/data/AlipayAccountInfo;->getAccount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const v12, 0x7f080053

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 317
    .restart local v3       #check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Lcom/ub/main/data/AlipayAccountInfo;->getDefault()I

    move-result v12

    if-nez v12, :cond_12

    const/4 v12, 0x4

    :goto_8
    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 318
    invoke-virtual {v0}, Lcom/ub/main/data/AlipayAccountInfo;->getDefault()I

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    .end local v3           #check:Landroid/widget/CheckBox;
    .end local v6           #layout:Landroid/widget/LinearLayout;
    .end local v7           #line:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 289
    .end local v5           #i:I
    :cond_11
    const v12, 0x7f080028

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 290
    const v12, 0x7f080025

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 317
    .restart local v0       #account:Lcom/ub/main/data/AlipayAccountInfo;
    .restart local v3       #check:Landroid/widget/CheckBox;
    .restart local v5       #i:I
    .restart local v6       #layout:Landroid/widget/LinearLayout;
    .restart local v7       #line:Landroid/widget/ImageView;
    .restart local v8       #textView:Landroid/widget/TextView;
    :cond_12
    const/4 v12, 0x0

    goto :goto_8

    .line 318
    :cond_13
    const/4 v12, 0x1

    goto :goto_9

    .line 320
    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    .end local v3           #check:Landroid/widget/CheckBox;
    .end local v6           #layout:Landroid/widget/LinearLayout;
    .end local v7           #line:Landroid/widget/ImageView;
    .end local v8           #textView:Landroid/widget/TextView;
    :cond_14
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->lineId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 321
    sget-object v12, Lcom/ub/main/account/AccountCreditCard;->textId:[I

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method private loadData()V
    .locals 6

    .prologue
    .line 126
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_CREDIT_CARD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 127
    invoke-static {}, Lcom/ub/main/util/NetConfig;->creatGetCreditCardListPostString()Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/AccountCreditCard;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private setDefaultAccount(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    .line 378
    iget v5, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    if-nez v5, :cond_2

    .line 379
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_0

    .line 380
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v5}, Lcom/ub/main/util/SqlDbHelper;->open()Lcom/ub/main/util/SqlDbHelper;

    .line 381
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 386
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/AlipayAccountInfo;

    .line 387
    .local v0, account:Lcom/ub/main/data/AlipayAccountInfo;
    invoke-virtual {v0, v7}, Lcom/ub/main/data/AlipayAccountInfo;->setDefault(I)V

    .line 388
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v5, v0}, Lcom/ub/main/util/SqlDbHelper;->updateZFB_Account(Lcom/ub/main/data/AlipayAccountInfo;)Z

    .line 389
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v5}, Lcom/ub/main/util/SqlDbHelper;->close()V

    .line 432
    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    .end local v4           #i:I
    :cond_0
    :goto_1
    return-void

    .line 382
    .restart local v4       #i:I
    :cond_1
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->zfbList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/AlipayAccountInfo;

    .line 383
    .restart local v0       #account:Lcom/ub/main/data/AlipayAccountInfo;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/ub/main/data/AlipayAccountInfo;->setDefault(I)V

    .line 384
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->dpHelper:Lcom/ub/main/util/SqlDbHelper;

    invoke-virtual {v5, v0}, Lcom/ub/main/util/SqlDbHelper;->updateZFB_Account(Lcom/ub/main/data/AlipayAccountInfo;)Z

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 391
    .end local v0           #account:Lcom/ub/main/data/AlipayAccountInfo;
    .end local v4           #i:I
    :cond_2
    iget v5, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    if-ne v5, v7, :cond_0

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, count:I
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 395
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 397
    :cond_3
    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 398
    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v1, v5

    .line 401
    :cond_4
    if-le v1, p1, :cond_0

    .line 407
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_6

    .line 408
    :cond_5
    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .line 418
    .local v0, account:Lcom/ub/main/data/CreditCardAccountInfo;
    :goto_2
    invoke-virtual {v0, v7}, Lcom/ub/main/data/CreditCardAccountInfo;->setDefault(I)V

    .line 419
    sget-object v5, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v6, "pt_ActId"

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ub/main/data/UserInfoBean;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iput-object v0, p0, Lcom/ub/main/account/AccountCreditCard;->tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 422
    new-instance v2, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 423
    .local v2, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v3, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 424
    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatBindCreditCardPostString(Lcom/ub/main/data/CreditCardAccountInfo;)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-direct {v3, v5, v6, v7, v2}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 426
    .local v3, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v3}, Lcom/ub/main/net/HttpStack;->start()V

    .line 427
    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->dismissLoadingDialog()V

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6b63\u5728\u5207\u6362\u8d26\u6237\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u4e3a\u9ed8\u8ba4\u8d26\u6237\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p0, v5}, Lcom/ub/main/account/AccountCreditCard;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    .end local v2           #httpHandler:Lcom/ub/main/net/HttpHandler;
    .end local v3           #httpStack:Lcom/ub/main/net/HttpStack;
    :cond_6
    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_8

    .line 410
    :cond_7
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto :goto_2

    .line 412
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    :cond_8
    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_9

    .line 413
    sget-object v5, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto :goto_2

    .line 415
    .end local v0           #account:Lcom/ub/main/data/CreditCardAccountInfo;
    :cond_9
    iget-object v5, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    sget-object v6, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/CreditCardAccountInfo;

    .restart local v0       #account:Lcom/ub/main/data/CreditCardAccountInfo;
    goto/16 :goto_2
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 601
    const-string v6, "200"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 602
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_CREDIT_CARD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v6, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 603
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "cardList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, cardList:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->jsonArray:Lorg/json/JSONArray;

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, ccaiObj:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 607
    .local v2, ccai:Lcom/ub/main/data/CreditCardAccountInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    .line 608
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 623
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->initView()V

    .line 651
    .end local v1           #cardList:Ljava/lang/String;
    .end local v2           #ccai:Lcom/ub/main/data/CreditCardAccountInfo;
    .end local v3           #ccaiObj:Lorg/json/JSONObject;
    .end local v4           #i:I
    :cond_0
    :goto_1
    return-void

    .line 609
    .restart local v1       #cardList:Ljava/lang/String;
    .restart local v2       #ccai:Lcom/ub/main/data/CreditCardAccountInfo;
    .restart local v3       #ccaiObj:Lorg/json/JSONObject;
    .restart local v4       #i:I
    :cond_1
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 610
    new-instance v2, Lcom/ub/main/data/CreditCardAccountInfo;

    .end local v2           #ccai:Lcom/ub/main/data/CreditCardAccountInfo;
    invoke-direct {v2}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    .line 611
    .restart local v2       #ccai:Lcom/ub/main/data/CreditCardAccountInfo;
    const/4 v5, 0x0

    .line 612
    .local v5, index:I
    const-string v6, "pd_FrpId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, bank:Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lcom/ub/main/util/UIConfig;->bankList:[[Ljava/lang/String;

    aget-object v6, v6, v8

    array-length v6, v6

    if-lt v5, v6, :cond_3

    .line 618
    :cond_2
    invoke-virtual {v2, v5}, Lcom/ub/main/data/CreditCardAccountInfo;->setBank(I)V

    .line 619
    const-string v6, "pt_ActId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardId(Ljava/lang/String;)V

    .line 620
    const-string v6, "pt_ActId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 621
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 614
    :cond_3
    sget-object v6, Lcom/ub/main/util/UIConfig;->bankList:[[Ljava/lang/String;

    aget-object v6, v6, v8

    aget-object v6, v6, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 613
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 625
    .end local v0           #bank:Ljava/lang/String;
    .end local v1           #cardList:Ljava/lang/String;
    .end local v2           #ccai:Lcom/ub/main/data/CreditCardAccountInfo;
    .end local v3           #ccaiObj:Lorg/json/JSONObject;
    .end local v4           #i:I
    .end local v5           #index:I
    :cond_4
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->DELETE_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v6, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 626
    const-string v6, "\u5220\u9664\u6210\u529f\uff01"

    invoke-static {p0, v6}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 629
    sget-object v6, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 630
    sget-object v6, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/ub/main/account/AccountCreditCard;->tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 632
    :cond_5
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 633
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->xykList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/ub/main/account/AccountCreditCard;->tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    :cond_6
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->initView()V

    goto :goto_1

    .line 636
    :cond_7
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v6, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    const-string v6, "\u8bbe\u7f6e\u6210\u529f\uff01"

    invoke-static {p0, v6}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/ub/main/data/CreditCardAccountInfo;->setDefault(I)V

    .line 639
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->initView()V

    goto/16 :goto_1

    .line 643
    :cond_8
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v6, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 644
    iget-object v6, p0, Lcom/ub/main/account/AccountCreditCard;->tempAccount:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v6, v8}, Lcom/ub/main/data/CreditCardAccountInfo;->setDefault(I)V

    goto/16 :goto_1

    .line 646
    :cond_9
    const-string v6, "1012"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 647
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public btnOnClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 331
    const-class v0, Lcom/ub/main/account/AccountBindCreditCard;

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;I)V

    .line 332
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->loadData()V

    .line 145
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->initView()V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/ub/main/account/AccountCreditCard;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 98
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    .line 101
    :cond_0
    const/high16 v4, 0x7f08

    invoke-virtual {p0, v4}, Lcom/ub/main/account/AccountCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    .local v1, head:Landroid/view/ViewGroup;
    const v4, 0x7f0800ed

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 103
    .local v0, back:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    const v4, 0x7f0800e7

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget v4, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    if-nez v4, :cond_2

    .line 107
    const-string v4, "\u652f\u4ed8\u5b9d\u8d26\u6237\u7ba1\u7406"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1
    :goto_0
    new-instance v4, Lcom/ub/main/account/AccountCreditCard$1;

    invoke-direct {v4, p0}, Lcom/ub/main/account/AccountCreditCard$1;-><init>(Lcom/ub/main/account/AccountCreditCard;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->loadData()V

    .line 118
    invoke-direct {p0}, Lcom/ub/main/account/AccountCreditCard;->initView()V

    .line 119
    return-void

    .line 108
    :cond_2
    iget v4, p0, Lcom/ub/main/account/AccountCreditCard;->accountType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 109
    const-string v4, "\u4fe1\u7528\u5361\u8d26\u6237\u7ba1\u7406"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 590
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/ub/main/account/AccountCreditCard;->finish()V

    .line 592
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 338
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u8bbe\u4e3a\u9ed8\u8ba4\u652f\u4ed8\u8d26\u6237"

    aput-object v4, v2, v3

    const-string v3, "\u5220\u9664"

    aput-object v3, v2, v5

    .line 339
    .local v2, items:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "\u8bbe\u7f6e"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    new-instance v3, Lcom/ub/main/account/AccountCreditCard$2;

    invoke-direct {v3, p0, p1}, Lcom/ub/main/account/AccountCreditCard$2;-><init>(Lcom/ub/main/account/AccountCreditCard;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 369
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 370
    return v5
.end method
