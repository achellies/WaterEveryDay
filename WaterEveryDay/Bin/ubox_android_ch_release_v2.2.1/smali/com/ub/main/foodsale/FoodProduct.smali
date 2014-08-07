.class public Lcom/ub/main/foodsale/FoodProduct;
.super Lcom/ub/main/BaseActivity;
.source "FoodProduct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;,
        Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;
    }
.end annotation


# static fields
.field public static final DAY_SECONDS:I = 0x5265c00

.field public static final HORU_SECONDS:I = 0x36ee80

.field public static final MINUTE_SECONDS:I = 0xea60

.field private static final REQUEST_CODE_SELECT_MACHINE:I = 0x0

.field private static final REQUEST_CODE_UBNUMBER:I = 0x0

.field public static final SECOND_UPDATE:I = 0x0

.field public static final TWO_MIN_UPDATE:I = 0x1

.field private static final VMID:Ljava/lang/String; = "vmid"

.field private static final bottomTabIds:[I

.field private static final buyTypeBg:[I

.field private static final buyTypes:[Ljava/lang/String;


# instance fields
.field private backBtn:Landroid/widget/Button;

.field private bottomTabItems:[Landroid/view/View;

.field private buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

.field private currentDataIndex:I

.field private currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

.field private dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

.field private dayTypeList:[Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private machine:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private machineIdView:Landroid/widget/TextView;

.field private orderAdapter:Lcom/ub/main/foodsale/FoodOrderAdapter;

.field private orderData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodOrderData;",
            ">;"
        }
    .end annotation
.end field

.field private rightTitleBtn:Landroid/widget/Button;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selectedDay:Ljava/lang/String;

.field private serverTime:J

.field private tabLayout:Landroid/widget/LinearLayout;

.field private timeTextView:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private topPane:Landroid/view/View;

.field private topTabBar:Landroid/view/View;

.field updateThread:Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;

.field private vmId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const v4, 0x7f0200b1

    const/4 v3, 0x2

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "\u552e"

    aput-object v1, v0, v5

    const-string v1, "\u9884"

    aput-object v1, v0, v3

    const-string v1, "\u505c"

    aput-object v1, v0, v6

    const-string v1, "\u5b8c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u7a7a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ub/main/foodsale/FoodProduct;->buyTypes:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [I

    const v1, 0x7f0200ab

    aput v1, v0, v5

    const v1, 0x7f020094

    aput v1, v0, v3

    aput v4, v0, v6

    aput v4, v0, v7

    const/4 v1, 0x5

    aput v4, v0, v1

    sput-object v0, Lcom/ub/main/foodsale/FoodProduct;->buyTypeBg:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabIds:[I

    .line 39
    return-void

    .line 102
    :array_0
    .array-data 0x4
        0xd4t 0x0t 0x8t 0x7ft
        0xd5t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->orderData:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    .line 111
    sget-object v0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabIds:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->selectedDay:Ljava/lang/String;

    .line 686
    new-instance v0, Lcom/ub/main/foodsale/FoodProduct$1;

    invoke-direct {v0, p0}, Lcom/ub/main/foodsale/FoodProduct$1;-><init>(Lcom/ub/main/foodsale/FoodProduct;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 750
    new-instance v0, Lcom/ub/main/foodsale/FoodProduct$2;

    invoke-direct {v0, p0}, Lcom/ub/main/foodsale/FoodProduct$2;-><init>(Lcom/ub/main/foodsale/FoodProduct;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/foodsale/FoodProduct;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->timeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/foodsale/FoodProduct;)J
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/ub/main/foodsale/FoodProduct;->serverTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/ub/main/foodsale/FoodProduct;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/ub/main/foodsale/FoodProduct;->serverTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/ub/main/foodsale/FoodProduct;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/foodsale/FoodProduct;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/foodsale/FoodProduct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct;->selectedDay:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/ub/main/foodsale/FoodProduct;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ub/main/foodsale/FoodProduct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->selectedDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ub/main/foodsale/FoodProduct;Lcom/ub/main/foodsale/FoodOrderData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    return-void
.end method

.method static synthetic access$9(Lcom/ub/main/foodsale/FoodProduct;)Lcom/ub/main/foodsale/FoodOrderData;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    return-object v0
.end method

.method private back()V
    .locals 5

    .prologue
    .line 424
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "vmid"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "vmId"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v3, "title"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "address"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "address"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v3, "distence"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "distence"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 432
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/ub/main/foodsale/FoodProduct;->setResult(ILandroid/content/Intent;)V

    .line 434
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodProduct;->finish()V

    .line 435
    return-void

    .line 430
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "distence"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 264
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getData()V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 258
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    new-instance v2, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;-><init>(Lcom/ub/main/foodsale/FoodProduct;Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;)V

    aput-object v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private gotoBuy(I)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 603
    sget-boolean v2, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/foodsale/FoodData;

    .line 608
    .local v1, data:Lcom/ub/main/foodsale/FoodData;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v3, "vmId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v3, "vmId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    :cond_2
    sput-boolean v4, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    goto :goto_0

    .line 611
    :cond_3
    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->goods_num()I

    move-result v2

    if-gtz v2, :cond_4

    .line 621
    sput-boolean v4, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    goto :goto_0

    .line 623
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 625
    const-string v2, "buyOrOrder"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    :cond_5
    :goto_1
    const-string v3, "vmid"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "vmId"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v3, "title"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "pid"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "time"

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v4, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->food_date()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "price"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->sellPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "name"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->food_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "info"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->food_material()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "url"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->picBig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "unique"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->unique()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "goods_num"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodData;->goods_num()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string v2, "latestTime"

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v4, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getLatestTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-class v2, Lcom/ub/main/foodsale/FoodBuy;

    const/4 v3, 0x5

    invoke-static {p0, v2, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 626
    :cond_6
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 627
    const-string v2, "buyOrOrder"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method private initModel()V
    .locals 8

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodProduct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 218
    .local v6, bundel:Landroid/os/Bundle;
    const-string v0, "id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->vmId:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    .line 222
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->vmId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 223
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "type"

    const-string v1, "foodsale"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-class v0, Lcom/ub/main/ubsale/UbNumber;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v7}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 241
    .end local v7           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ub/main/foodsale/FoodProduct;->serverTime:J

    .line 230
    new-instance v0, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;

    invoke-direct {v0, p0}, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;-><init>(Lcom/ub/main/foodsale/FoodProduct;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->updateThread:Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;

    .line 231
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->updateThread:Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->openTwoMintuesUpdate()V

    .line 232
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->updateThread:Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$TimeUpdateThread;->start()V

    .line 234
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    .line 237
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 238
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->vmId:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createFOOD_getVmInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 237
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 171
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, head:Landroid/view/View;
    const v4, 0x7f0800e7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->title:Landroid/widget/TextView;

    .line 173
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->title:Landroid/widget/TextView;

    const-string v5, "\u53cb\u5b9d\u76d2\u996d\u673a"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v4, 0x7f0800ca

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->topPane:Landroid/view/View;

    .line 177
    const v4, 0x7f0800cd

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->topTabBar:Landroid/view/View;

    .line 179
    const v4, 0x7f0800cc

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->timeTextView:Landroid/widget/TextView;

    .line 180
    const v4, 0x7f0800cb

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->machineIdView:Landroid/widget/TextView;

    .line 182
    const v4, 0x7f0800ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->backBtn:Landroid/widget/Button;

    .line 183
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->backBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    const v4, 0x7f0800ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    .line 186
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 188
    .local v1, day:Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v4, v7, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 190
    const-string v4, "\u6708"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    if-le v4, v7, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 192
    const-string v4, "\u65e5"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v4, 0x7f0800d3

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    .line 197
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodProduct;->getData()V

    .line 198
    new-instance v4, Lcom/ub/main/foodsale/FoodProductAdapter;

    iget-object v5, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/ub/main/foodsale/FoodProductAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    .line 199
    new-instance v4, Lcom/ub/main/foodsale/FoodOrderAdapter;

    iget-object v5, p0, Lcom/ub/main/foodsale/FoodProduct;->orderData:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/ub/main/foodsale/FoodOrderAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->orderAdapter:Lcom/ub/main/foodsale/FoodOrderAdapter;

    .line 200
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/ub/main/foodsale/FoodProduct;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 203
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    sget-object v4, Lcom/ub/main/foodsale/FoodProduct;->bottomTabIds:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    aget-object v4, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 209
    const v4, 0x7f0800d0

    invoke-virtual {p0, v4}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    .line 210
    return-void

    .line 189
    .end local v3           #i:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 191
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 204
    .restart local v3       #i:I
    :cond_2
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    sget-object v5, Lcom/ub/main/foodsale/FoodProduct;->bottomTabIds:[I

    aget v5, v5, v3

    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v3

    .line 205
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 287
    const-string v15, "200"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 288
    sget-object v15, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_9

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/ub/main/foodsale/FoodProduct;->clearData()V

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonObject:Lorg/json/JSONObject;

    const-string v16, "vmInfo"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 292
    .local v7, infoObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v16, "vmId"

    const-string v17, "vmId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v16, "vmName"

    const-string v17, "vmName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v16, "address"

    const-string v17, "address"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v15, "day_type_list"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 297
    const-string v15, "day_type_list"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 298
    .local v3, array:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;

    .line 299
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_3

    .line 305
    .end local v3           #array:Lorg/json/JSONArray;
    .end local v6           #i:I
    :cond_0
    const-string v15, "vmid"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/ub/main/foodsale/FoodProduct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 306
    .local v11, sharedata:Landroid/content/SharedPreferences$Editor;
    const-string v16, "vmid"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v17, "vmId"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->machineIdView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v15, "\u76d2\u996d\u673a\u7f16\u53f7\uff1a"

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    const-string v18, "vmId"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const-string v15, "lstShangpin4Alipay"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 313
    .local v12, shopping:Lorg/json/JSONArray;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 315
    const/4 v8, 0x0

    .local v8, n:I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v8, v15, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-lez v15, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->performClick()Z

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    move/from16 v17, v0

    aget-object v15, v15, v17

    iget-object v0, v15, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    move/from16 v18, v0

    aget-object v15, v15, v18

    invoke-virtual {v15}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v15

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_7

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/ub/main/foodsale/FoodProductAdapter;->setData(Ljava/util/ArrayList;Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    invoke-virtual {v15}, Lcom/ub/main/foodsale/FoodProductAdapter;->notifyDataSetChanged()V

    .line 407
    .end local v7           #infoObject:Lorg/json/JSONObject;
    .end local v8           #n:I
    .end local v11           #sharedata:Landroid/content/SharedPreferences$Editor;
    .end local v12           #shopping:Lorg/json/JSONArray;
    :cond_2
    :goto_3
    const/4 v15, 0x0

    sput-boolean v15, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    .line 408
    :goto_4
    return-void

    .line 300
    .restart local v3       #array:Lorg/json/JSONArray;
    .restart local v6       #i:I
    .restart local v7       #infoObject:Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 316
    .end local v3           #array:Lorg/json/JSONArray;
    .end local v6           #i:I
    .restart local v8       #n:I
    .restart local v11       #sharedata:Landroid/content/SharedPreferences$Editor;
    .restart local v12       #shopping:Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 317
    .local v5, foodListInfo:Lorg/json/JSONObject;
    if-eqz v5, :cond_5

    const-string v15, "food_info"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/foodsale/FoodProduct;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f030021

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 321
    .local v14, view:Landroid/view/View;
    const v15, 0x7f080089

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 322
    .local v9, name:Landroid/widget/TextView;
    const-string v15, "time_type"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v15, v15, v8

    const-string v16, "latest"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->setLatestTime(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v15, v15, v8

    const-string v16, "buy_type"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->setState(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v15, v15, v8

    const-string v16, "food_date"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->setFoodDate(Ljava/lang/String;)V

    .line 328
    const v15, 0x7f0800b2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 329
    .local v13, state:Landroid/widget/TextView;
    sget-object v15, Lcom/ub/main/foodsale/FoodProduct;->buyTypes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v16

    aget-object v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    sget-object v15, Lcom/ub/main/foodsale/FoodProduct;->buyTypeBg:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v16

    aget v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 331
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x91

    const/16 v18, 0x3c

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const-string v15, "food_info"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonArray:Lorg/json/JSONArray;

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 339
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_6

    .line 315
    .end local v6           #i:I
    .end local v9           #name:Landroid/widget/TextView;
    .end local v13           #state:Landroid/widget/TextView;
    .end local v14           #view:Landroid/view/View;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 342
    .restart local v6       #i:I
    .restart local v9       #name:Landroid/widget/TextView;
    .restart local v13       #state:Landroid/widget/TextView;
    .restart local v14       #view:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v6, v15, :cond_5

    .line 345
    new-instance v4, Lcom/ub/main/foodsale/FoodData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-direct {v4, v15}, Lcom/ub/main/foodsale/FoodData;-><init>(Lorg/json/JSONObject;)V

    .line 346
    .local v4, data:Lcom/ub/main/foodsale/FoodData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 355
    .end local v4           #data:Lcom/ub/main/foodsale/FoodData;
    .end local v5           #foodListInfo:Lorg/json/JSONObject;
    .end local v6           #i:I
    .end local v9           #name:Landroid/widget/TextView;
    .end local v13           #state:Landroid/widget/TextView;
    .end local v14           #view:Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 358
    .end local v8           #n:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/foodsale/FoodProduct;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "\u6682\u65f6\u6ca1\u6709\u5546\u54c1\u4fe1\u606f\uff01"

    invoke-static/range {v15 .. v16}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 362
    .end local v7           #infoObject:Lorg/json/JSONObject;
    .end local v11           #sharedata:Landroid/content/SharedPreferences$Editor;
    .end local v12           #shopping:Lorg/json/JSONArray;
    :cond_9
    sget-object v15, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDERFOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_b

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->orderData:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 364
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->jsonObject:Lorg/json/JSONObject;

    const-string v16, "foodlist"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 365
    .restart local v3       #array:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 368
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_a

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->orderAdapter:Lcom/ub/main/foodsale/FoodOrderAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->orderAdapter:Lcom/ub/main/foodsale/FoodOrderAdapter;

    invoke-virtual {v15}, Lcom/ub/main/foodsale/FoodOrderAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 369
    :cond_a
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 370
    .local v10, object:Lorg/json/JSONObject;
    new-instance v4, Lcom/ub/main/foodsale/FoodOrderData;

    invoke-direct {v4, v10}, Lcom/ub/main/foodsale/FoodOrderData;-><init>(Lorg/json/JSONObject;)V

    .line 371
    .local v4, data:Lcom/ub/main/foodsale/FoodOrderData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->orderData:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 376
    .end local v3           #array:Lorg/json/JSONArray;
    .end local v4           #data:Lcom/ub/main/foodsale/FoodOrderData;
    .end local v6           #i:I
    .end local v10           #object:Lorg/json/JSONObject;
    :cond_b
    sget-object v15, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_CANCELFOOD_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->orderData:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->orderAdapter:Lcom/ub/main/foodsale/FoodOrderAdapter;

    invoke-virtual {v15}, Lcom/ub/main/foodsale/FoodOrderAdapter;->notifyDataSetChanged()V

    .line 379
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    const-string v16, "\u63d0\u793a"

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 381
    const-string v16, "\u9000\u8ba2\u6210\u529f\uff01"

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 382
    const-string v16, "\u786e\u5b9a"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 385
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ub/main/foodsale/FoodProduct;->TAG:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    const-string v16, "\u63d0\u793a"

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 388
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 389
    const-string v16, "\u786e\u5b9a"

    new-instance v17, Lcom/ub/main/foodsale/FoodProduct$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ub/main/foodsale/FoodProduct$3;-><init>(Lcom/ub/main/foodsale/FoodProduct;Lcom/ub/main/util/NetConfig$HttpRequestId;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 405
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 653
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 655
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    if-nez p1, :cond_2

    .line 659
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 660
    .local v6, bundle:Landroid/os/Bundle;
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 661
    const-string v0, "id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 660
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machineIdView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u76d2\u996d\u673a\u7f16\u53f7\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 666
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_2
    if-nez p1, :cond_0

    .line 667
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 668
    const-string v0, "id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 667
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machineIdView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u76d2\u996d\u673a\u7f16\u53f7\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const v12, 0x7f0800d3

    const v5, 0x7f0800d2

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 445
    :sswitch_0
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodProduct;->back()V

    goto :goto_0

    .line 448
    :sswitch_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    if-nez v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodProduct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u53ef\u4f9b\u9009\u62e9\u7684\u65e5\u671f\uff01"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const-string v0, "\u65e5\u671f\u9009\u62e9"

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 455
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dayTypeList:[Ljava/lang/String;

    new-instance v1, Lcom/ub/main/foodsale/FoodProduct$4;

    invoke-direct {v1, p0}, Lcom/ub/main/foodsale/FoodProduct$4;-><init>(Lcom/ub/main/foodsale/FoodProduct;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 471
    .local v6, alert:Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 475
    .end local v6           #alert:Landroid/app/AlertDialog;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->gotoBuy(I)V

    goto :goto_0

    .line 480
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->gotoBuy(I)V

    goto :goto_0

    .line 485
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->gotoBuy(I)V

    goto :goto_0

    .line 490
    :sswitch_5
    move-object v11, p1

    .line 491
    .local v11, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 492
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 493
    const-string v1, "\u771f\u7684\u8981\u9000\u8ba2\u7f8e\u5473\u9910\u54c1\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 494
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 495
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/foodsale/FoodProduct$5;

    invoke-direct {v2, p0, v11}, Lcom/ub/main/foodsale/FoodProduct$5;-><init>(Lcom/ub/main/foodsale/FoodProduct;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 512
    .end local v11           #view:Landroid/view/View;
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/foodsale/FoodOrderData;

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    .line 513
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "type"

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 515
    const-string v0, "vmid"

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodOrderData;->vmid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "pid"

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodOrderData;->pid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "order_id"

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodOrderData;->order_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "productName"

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodOrderData;->food_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sput-boolean v2, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 524
    const-class v0, Lcom/ub/main/foodsale/FoodQuHuo;

    const/4 v3, 0x6

    invoke-static {p0, v0, v3, v8}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 528
    .end local v8           #bundle:Landroid/os/Bundle;
    :sswitch_7
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt v9, v0, :cond_3

    .line 533
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 534
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 535
    :cond_2
    invoke-virtual {p0, v12}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 537
    .local v10, noInfo:Landroid/widget/TextView;
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v1, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 539
    const-string v0, "\u6682\u65e0\u9500\u552e\u8ba1\u5212"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 529
    .end local v10           #noInfo:Landroid/widget/TextView;
    :cond_3
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 530
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 531
    iput v9, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    .line 528
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 540
    .restart local v10       #noInfo:Landroid/widget/TextView;
    :cond_5
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v1, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 541
    const-string v0, "\u9884\u5b9a\u5df2\u7ecf\u622a\u6b62\n\u9500\u552e\u5c1a\u672a\u5f00\u59cb"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 544
    .end local v10           #noInfo:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p0, v12}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v4, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v4

    iget-object v4, v0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v5, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/ub/main/foodsale/FoodProductAdapter;->setData(Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    .line 551
    .end local v9           #i:I
    :sswitch_8
    invoke-virtual {p0, v12}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 557
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    .line 558
    :cond_8
    invoke-virtual {p0, v12}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 559
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 560
    .restart local v10       #noInfo:Landroid/widget/TextView;
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_a

    .line 562
    const-string v0, "\u6682\u65e0\u9500\u552e\u8ba1\u5212"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .end local v10           #noInfo:Landroid/widget/TextView;
    :cond_9
    :goto_3
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    array-length v0, v0

    if-lt v9, v0, :cond_d

    .line 575
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 576
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->topPane:Landroid/view/View;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 577
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->topTabBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machineIdView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 563
    .end local v9           #i:I
    .restart local v10       #noInfo:Landroid/widget/TextView;
    :cond_a
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v3, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 564
    const-string v0, "\u9884\u5b9a\u5df2\u7ecf\u622a\u6b62\n\u9500\u552e\u5c1a\u672a\u5f00\u59cb"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 567
    .end local v10           #noInfo:Landroid/widget/TextView;
    :cond_b
    invoke-virtual {p0, v12}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 568
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v4, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v4

    iget-object v4, v0, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->foodData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    iget v5, p0, Lcom/ub/main/foodsale/FoodProduct;->currentDataIndex:I

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;->getState()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v3, v4, v0}, Lcom/ub/main/foodsale/FoodProductAdapter;->setData(Ljava/util/ArrayList;Z)V

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_5

    .line 573
    .restart local v9       #i:I
    :cond_d
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    aget-object v0, v0, v9

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 572
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 582
    .end local v9           #i:I
    :sswitch_9
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->rightTitleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 583
    invoke-virtual {p0, v12}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 586
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_6
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    array-length v0, v0

    if-lt v9, v0, :cond_e

    .line 589
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 590
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->orderAdapter:Lcom/ub/main/foodsale/FoodOrderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->topPane:Landroid/view/View;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 592
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->topTabBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machineIdView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDERFOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 595
    const-string v0, "10004"

    const-string v2, "1"

    const-string v3, "10"

    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createFOOD_getOrderFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 594
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :cond_e
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->bottomTabItems:[Landroid/view/View;

    aget-object v0, v0, v9

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 586
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800b1 -> :sswitch_7
        0x7f0800be -> :sswitch_2
        0x7f0800c7 -> :sswitch_6
        0x7f0800c8 -> :sswitch_5
        0x7f0800d4 -> :sswitch_8
        0x7f0800d5 -> :sswitch_9
        0x7f0800da -> :sswitch_3
        0x7f0800e0 -> :sswitch_4
        0x7f0800ed -> :sswitch_0
        0x7f0800ee -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodProduct;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodProduct;->initView()V

    .line 150
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodProduct;->initModel()V

    .line 151
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodProduct;->initControl()V

    .line 153
    const v1, 0x7f0800cf

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ub/main/foodsale/MyHScrollView;

    .line 154
    .local v0, myscroll:Lcom/ub/main/foodsale/MyHScrollView;
    invoke-virtual {v0, p0}, Lcom/ub/main/foodsale/MyHScrollView;->setObserver(Lcom/ub/main/foodsale/MyHScrollView$HScrollObserver;)V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    :cond_0
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    .line 271
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProductAdapter;->clear()V

    .line 272
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->buyadapter:Lcom/ub/main/foodsale/FoodProductAdapter;

    .line 273
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->dataList:[Lcom/ub/main/foodsale/FoodProduct$FoodDataInfo;

    .line 274
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 276
    :cond_1
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->machine:Ljava/util/HashMap;

    .line 277
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->listView:Landroid/widget/ListView;

    .line 278
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->backBtn:Landroid/widget/Button;

    .line 279
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodProduct;->title:Landroid/widget/TextView;

    .line 280
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 281
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 282
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 412
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodProduct;->back()V

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 158
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 159
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    .line 162
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 163
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct;->vmId:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createFOOD_getVmInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public viewScrolledToLeft()V
    .locals 2

    .prologue
    .line 822
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 823
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 824
    return-void
.end method

.method public viewScrolledToOther()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    return-void
.end method

.method public viewScrolledToRight()V
    .locals 2

    .prologue
    .line 828
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    return-void
.end method
