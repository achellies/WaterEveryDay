.class public Lcom/ub/main/ubsale/UbHome;
.super Lcom/ub/main/BaseActivity;
.source "UbHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ub/main/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final COUPON_BUY:Ljava/lang/String; = "coupon_buy"

.field public static final FOODSALE:Ljava/lang/String; = "foodsale"

.field private static final REQUEST_CODE_UBNUMBER:I = 0x1

.field private static final REQUEST_CODE_UBOXPRODUCT:I = 0x0

.field public static final UBOX:Ljava/lang/String; = "ubox"

.field private static final UBOX_MAX_NUMBER:B = 0x8t

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private CouponId:Ljava/lang/String;

.field private adapter:Lcom/ub/main/ubsale/MyAdapter;

.field private backBtn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private inputBtn:Landroid/widget/Button;

.field private listView:Landroid/widget/ListView;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;

.field private uboxOrFoodSale:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    .line 237
    new-instance v0, Lcom/ub/main/ubsale/UbHome$1;

    invoke-direct {v0, p0}, Lcom/ub/main/ubsale/UbHome$1;-><init>(Lcom/ub/main/ubsale/UbHome;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/ubsale/UbHome;)Lcom/ub/main/ubsale/MyAdapter;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->adapter:Lcom/ub/main/ubsale/MyAdapter;

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    if-nez v2, :cond_0

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    .line 315
    :cond_0
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rsub-int/lit8 v0, v2, 0x8

    .line 316
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 326
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    return-object v2

    .line 317
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 318
    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v3, "title"

    const-string v4, " "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v3, "vmid"

    const-string v4, " "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v3, "address"

    const-string v4, " "

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v3, "distence"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v3, "favor"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNetMachine(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 148
    const-string v1, "title"

    .line 149
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v1, v2}, Lcom/ub/main/ubsale/UbHome;->setMapData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "vmid"

    .line 151
    const-string v2, "vmid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p0, v1, v2}, Lcom/ub/main/ubsale/UbHome;->setMapData(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ub/main/ubsale/UbHome;->setMapData(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "distence"

    .line 155
    const-string v1, "distence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 153
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/ub/main/ubsale/UbHome;->setMapData(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "favor"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/ub/main/ubsale/UbHome;->setMapData(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->insertFirstData()V

    .line 162
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/ub/main/ubsale/UbHome;->adapter:Lcom/ub/main/ubsale/MyAdapter;

    invoke-virtual {v1}, Lcom/ub/main/ubsale/MyAdapter;->notifyDataSetChanged()V

    .line 163
    return-void

    .line 156
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    const-string v3, "distence"

    .line 156
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u516c\u91cc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private goToUbNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    iget-boolean v1, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    if-eqz v1, :cond_0

    .line 387
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "type"

    const-string v2, "foodsale"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-class v1, Lcom/ub/main/ubsale/UbNumber;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 402
    :goto_0
    return-void

    .line 391
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "type"

    const-string v2, "coupon_buy"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    sget-object v1, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-class v1, Lcom/ub/main/ubsale/UbNumber;

    invoke-static {p0, v1, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 398
    :cond_1
    const-class v1, Lcom/ub/main/ubsale/UbNumber;

    invoke-static {p0, v1, v3}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->inputBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    return-void
.end method

.method private initModel()V
    .locals 6

    .prologue
    .line 211
    const-string v0, "UbHome"

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->TAG:Ljava/lang/String;

    .line 212
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETFAVORLIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 214
    sget-object v0, Lcom/ub/main/util/NetConfig;->LATITUDE:Ljava/lang/String;

    .line 215
    sget-object v2, Lcom/ub/main/util/NetConfig;->LONGITUDE:Ljava/lang/String;

    .line 214
    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetNearbyMachine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 216
    const-string v5, "\u4e0b\u8f7d\u76d2\u996d\u673a\u4fe1\u606f..."

    move-object v0, p0

    move-object v4, p0

    .line 213
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_NEARBY_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 219
    sget-object v0, Lcom/ub/main/util/NetConfig;->LATITUDE:Ljava/lang/String;

    .line 220
    sget-object v2, Lcom/ub/main/util/NetConfig;->LONGITUDE:Ljava/lang/String;

    .line 219
    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetNearbyMachine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 221
    const-string v5, "\u4e0b\u8f7d\u552e\u8d27\u673a\u4fe1\u606f..."

    move-object v0, p0

    move-object v4, p0

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 171
    .local v8, intent:Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 172
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 173
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 174
    const-string v0, "foodsale"

    const-string v1, "type"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    .line 178
    .end local v7           #bundle:Landroid/os/Bundle;
    :cond_0
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->head:Landroid/view/ViewGroup;

    .line 179
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->title:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->title:Landroid/widget/TextView;

    const-string v1, "\u53cb\u5b9d\u76d2\u996d\u673a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->backBtn:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->inputBtn:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->inputBtn:Landroid/widget/Button;

    const-string v1, "\u8f93\u5165\u7f16\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->inputBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->listView:Landroid/widget/ListView;

    .line 194
    new-instance v0, Lcom/ub/main/ubsale/MyAdapter;

    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->getData()Ljava/util/List;

    move-result-object v2

    .line 195
    const v3, 0x7f03004c

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "distence"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    .line 196
    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    .line 197
    const-string v5, "vmid"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "address"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "favor"

    aput-object v5, v4, v1

    .line 198
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 200
    iget-boolean v6, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/ubsale/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 194
    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->adapter:Lcom/ub/main/ubsale/MyAdapter;

    .line 202
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbHome;->adapter:Lcom/ub/main/ubsale/MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->title:Landroid/widget/TextView;

    const-string v1, "\u53cb\u5b9d\u5728\u7ebf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :array_0
    .array-data 0x4
        0x75t 0x1t 0x8t 0x7ft
        0x52t 0x0t 0x8t 0x7ft
        0x79t 0x1t 0x8t 0x7ft
        0x7bt 0x1t 0x8t 0x7ft
        0x76t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method private sortList(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 301
    sget-object v0, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 302
    sget-object v0, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 305
    return-void
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
    .line 347
    const-string v3, "200"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 348
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "vmList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/ubsale/UbHome;->jsonArray:Lorg/json/JSONArray;

    .line 349
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, temp:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 373
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 374
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x66

    iput v3, v1, Landroid/os/Message;->what:I

    .line 375
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .end local v0           #i:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #temp:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 352
    .restart local v0       #i:I
    .restart local v2       #temp:Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 353
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 354
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "title"

    .line 355
    const-string v5, "vm_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "vmid"

    .line 357
    const-string v5, "vmid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "address"

    const-string v5, "vm_address"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v4, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v5, "distence"

    .line 361
    const-string v3, "distance"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 362
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    .line 360
    :goto_2
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v3, "favor"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 365
    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "favor"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_3
    sget-object v3, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    iget-object v4, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 371
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 362
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    const-string v6, "distance"

    .line 362
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u516c\u91cc"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "favor"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 377
    .end local v0           #i:I
    .end local v2           #temp:Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->goToUbNumber()V

    goto/16 :goto_1

    .line 380
    :cond_4
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->goToUbNumber()V

    goto/16 :goto_1
.end method

.method public insertFirstData()V
    .locals 5

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 288
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 289
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 291
    :cond_0
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 292
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 293
    :goto_1
    return-void

    .line 280
    :cond_1
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v1, Ljava/util/Map;

    .line 281
    .restart local v1       #tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "vmid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbHome;->sortList(I)V

    goto :goto_1

    .line 279
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    if-eq p2, v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/ub/main/ubsale/UbHome;->getNetMachine(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v1, p3}, Lcom/ub/main/ubsale/UbHome;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->finish()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 408
    :pswitch_0
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->finish()V

    goto :goto_0

    .line 411
    :pswitch_1
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->goToUbNumber()V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x7f0800ed
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f03004b

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbHome;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, bundel:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 97
    sget-object v1, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->initModel()V

    .line 101
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbHome;->initControl()V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 108
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->head:Landroid/view/ViewGroup;

    .line 109
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->title:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->backBtn:Landroid/widget/Button;

    .line 111
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->inputBtn:Landroid/widget/Button;

    .line 112
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->listView:Landroid/widget/ListView;

    .line 113
    sget-object v0, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    :cond_0
    sput-object v1, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    :cond_1
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 119
    iput-object v1, p0, Lcom/ub/main/ubsale/UbHome;->adapter:Lcom/ub/main/ubsale/MyAdapter;

    .line 120
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 419
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 420
    .local v1, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 421
    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 423
    invoke-direct {p0, p3}, Lcom/ub/main/ubsale/UbHome;->sortList(I)V

    .line 425
    iget-boolean v2, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    if-eqz v2, :cond_0

    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "id"

    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v3, "title"

    .line 429
    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v3, "address"

    const-string v2, "address"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v2, "get"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 432
    const-class v2, Lcom/ub/main/foodsale/FoodProduct;

    invoke-static {p0, v2, v4, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 466
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->CouponId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v3, Lcom/ub/main/util/Tool;->VMID:Ljava/lang/String;

    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-class v2, Lcom/ub/main/ubsale/Coupon_UbBuy;

    const/4 v3, 0x5

    invoke-static {p0, v2, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 442
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "id"

    .line 444
    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v3, "title"

    .line 446
    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v3, "address"

    const-string v2, "address"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "get"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 449
    const-class v2, Lcom/ub/main/ubsale/UbProduct;

    invoke-static {p0, v2, v4, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 455
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 458
    iget-boolean v2, p0, Lcom/ub/main/ubsale/UbHome;->uboxOrFoodSale:Z

    if-eqz v2, :cond_3

    const-string v2, "\u8bf7\u9009\u62e9\u6709\u6548\u76d2\u996d\u673a!\n\u6216\u8005\u624b\u52a8\u8f93\u5165\u76d2\u996d\u673a\u7f16\u53f7!"

    .line 457
    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 460
    const-string v3, "\u786e\u5b9a"

    .line 461
    new-instance v4, Lcom/ub/main/ubsale/UbHome$2;

    invoke-direct {v4, p0}, Lcom/ub/main/ubsale/UbHome$2;-><init>(Lcom/ub/main/ubsale/UbHome;)V

    .line 460
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 464
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 459
    :cond_3
    const-string v2, "\u8bf7\u9009\u62e9\u6709\u6548\u552e\u8d27\u673a!\n\u6216\u8005\u624b\u52a8\u8f93\u5165\u552e\u8d27\u673a\u7f16\u53f7!"

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 331
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbHome;->finish()V

    .line 333
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 342
    return-void
.end method

.method public putList()V
    .locals 5

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 270
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 272
    :cond_0
    return-void

    .line 265
    :cond_1
    sget-object v2, Lcom/ub/main/ubsale/UbHome;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v1, Ljava/util/Map;

    .line 266
    .restart local v1       #tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "vmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    iget-object v3, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    const-string v4, "vmid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMapData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/ub/main/ubsale/UbHome;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method
