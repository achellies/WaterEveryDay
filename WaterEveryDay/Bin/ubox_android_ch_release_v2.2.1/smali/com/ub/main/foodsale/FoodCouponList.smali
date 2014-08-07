.class public Lcom/ub/main/foodsale/FoodCouponList;
.super Lcom/ub/main/BaseActivity;
.source "FoodCouponList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PAGE_SIZE:I = 0xa

.field private static final YOUHUI_DETAIL_REQUEST_ID:I


# instance fields
.field private back:Landroid/widget/Button;

.field private couponId:Ljava/lang/String;

.field private couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

.field private couponlist_listView:Landroid/widget/ListView;

.field private foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

.field getMoreBtn:Landroid/widget/Button;

.field private head:Landroid/view/ViewGroup;

.field private isYouhuiquan:Z

.field linearLayout:Landroid/widget/LinearLayout;

.field private pageIndex:I

.field private pid:Ljava/lang/String;

.field private promotionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodPromotion;",
            ">;"
        }
    .end annotation
.end field

.field private promotionid:Ljava/lang/String;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sid:Ljava/lang/String;

.field private ticketsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodCoupon;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;

.field private totalCount:I

.field private unique:Ljava/lang/String;

.field private unuseableClick:Landroid/view/View$OnClickListener;

.field private unuseableView:Landroid/view/View;

.field private vmid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->pid:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->sid:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->vmid:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->unique:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Lcom/ub/main/foodsale/FoodCouponList$1;

    invoke-direct {v0, p0}, Lcom/ub/main/foodsale/FoodCouponList$1;-><init>(Lcom/ub/main/foodsale/FoodCouponList;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableClick:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lcom/ub/main/foodsale/FoodCouponList$2;

    invoke-direct {v0, p0}, Lcom/ub/main/foodsale/FoodCouponList$2;-><init>(Lcom/ub/main/foodsale/FoodCouponList;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/foodsale/FoodCouponList;)Z
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/foodsale/FoodCouponList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/foodsale/FoodCouponList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/ub/main/foodsale/FoodCouponList;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/foodsale/FoodCouponList;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->back()V

    return-void
.end method

.method private back()V
    .locals 6

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    if-eqz v4, :cond_1

    .line 326
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v4}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->getSelected()I

    move-result v3

    .line 327
    .local v3, selectPosition:I
    if-ltz v3, :cond_0

    .line 328
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v4, v3}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/foodsale/FoodCoupon;

    .line 329
    .local v0, coupon:Lcom/ub/main/foodsale/FoodCoupon;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 330
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "status"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->activity_status()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    const-string v4, "icon"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->icon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v4, "title"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v4, "channel"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->channel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v4, "id"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v4, "couponPrice"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->couponPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v4, "newprice"

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->newPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    .end local v0           #coupon:Lcom/ub/main/foodsale/FoodCoupon;
    :cond_0
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/ub/main/foodsale/FoodCouponList;->setResult(ILandroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->finish()V

    .line 356
    return-void

    .line 340
    .end local v3           #selectPosition:I
    :cond_1
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v4}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->getSelected()I

    move-result v3

    .line 341
    .restart local v3       #selectPosition:I
    if-ltz v3, :cond_0

    .line 342
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v4, v3}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ub/main/foodsale/FoodPromotion;

    .line 343
    .local v2, promotion:Lcom/ub/main/foodsale/FoodPromotion;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 344
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "status"

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->coupon_status()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string v4, "icon"

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->icon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v4, "title"

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v4, "newprice"

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->newPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v4, "activityPrice"

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->activityPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getBestCoupon()V
    .locals 10

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    sget-object v9, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 230
    const-string v0, "10004"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->pid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->vmid:Ljava/lang/String;

    const-string v3, "3"

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->unique:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "10"

    invoke-static/range {v0 .. v8}, Lcom/ub/main/util/NetConfig;->createFOOD_couponFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4f18\u60e0\u5238\u5217\u8868..."

    move-object v0, p0

    move-object v1, v9

    move-object v3, p0

    move-object v4, p0

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodCouponList;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 233
    :cond_1
    sget-object v9, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 234
    const-string v0, "10004"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->pid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->vmid:Ljava/lang/String;

    const-string v3, "2"

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->unique:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "10"

    invoke-static/range {v0 .. v8}, Lcom/ub/main/util/NetConfig;->createFOOD_couponFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4f18\u60e0\u5238\u5217\u8868..."

    move-object v0, p0

    move-object v1, v9

    move-object v3, p0

    move-object v4, p0

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodCouponList;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    :cond_3
    sget-object v9, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 240
    const-string v0, "10004"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->pid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->vmid:Ljava/lang/String;

    const-string v3, "4"

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->unique:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "10"

    invoke-static/range {v0 .. v8}, Lcom/ub/main/util/NetConfig;->createFOOD_couponFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4f18\u60e0\u6d3b\u52a8\u5217\u8868..."

    move-object v0, p0

    move-object v1, v9

    move-object v3, p0

    move-object v4, p0

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodCouponList;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_4
    sget-object v9, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 244
    const-string v0, "10004"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->pid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->vmid:Ljava/lang/String;

    const-string v3, "1"

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->unique:Ljava/lang/String;

    iget-object v5, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "10"

    invoke-static/range {v0 .. v8}, Lcom/ub/main/util/NetConfig;->createFOOD_couponFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4f18\u60e0\u6d3b\u52a8\u5217\u8868..."

    move-object v0, p0

    move-object v1, v9

    move-object v3, p0

    move-object v4, p0

    .line 243
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodCouponList;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v7, 0x7f080085

    const v6, 0x7f080084

    const v5, 0x7f0200ae

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 100
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodCouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->head:Landroid/view/ViewGroup;

    .line 102
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->back:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->back:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    const v1, 0x7f080086

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodCouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponlist_listView:Landroid/widget/ListView;

    .line 106
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponlist_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 108
    iget-boolean v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Lcom/ub/main/foodsale/FoodCouponListAdapter;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/ub/main/foodsale/FoodCouponListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    .line 110
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponlist_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->title:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->title:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u4e00\u5f20\u4f18\u60e0\u5238"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0, v6}, Lcom/ub/main/foodsale/FoodCouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u4e0d\u4f7f\u7528\u4f18\u60e0\u5238"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponlist_listView:Landroid/widget/ListView;

    new-instance v2, Lcom/ub/main/foodsale/FoodCouponList$3;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodCouponList$3;-><init>(Lcom/ub/main/foodsale/FoodCouponList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodCouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    .line 157
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodCouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;

    .line 159
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-boolean v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v1, v4}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->setSelected(I)V

    .line 166
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->notifyDataSetChanged()V

    .line 177
    .end local v0           #img:Landroid/widget/ImageView;
    :cond_1
    :goto_1
    return-void

    .line 118
    :cond_2
    new-instance v1, Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    .line 119
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponlist_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->head:Landroid/view/ViewGroup;

    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->title:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->title:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u4f18\u60e0\u6d3b\u52a8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0, v6}, Lcom/ub/main/foodsale/FoodCouponList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u4e0d\u4f7f\u7528\u4f18\u60e0\u6d3b\u52a8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 171
    .restart local v0       #img:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v1, v4}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->setSelected(I)V

    .line 173
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isyouhui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    .line 217
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->sid:Ljava/lang/String;

    .line 218
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->pid:Ljava/lang/String;

    .line 219
    const-string v1, "couponId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    .line 220
    const-string v1, "vmid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->vmid:Ljava/lang/String;

    .line 221
    const-string v1, "promotion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    .line 222
    const-string v1, "unique"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->unique:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->getBestCoupon()V

    .line 224
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 385
    const-string v6, "200"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 386
    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne v6, p1, :cond_1

    .line 388
    iget-boolean v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z

    if-eqz v6, :cond_7

    .line 389
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "data_count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->totalCount:I

    .line 390
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "couponList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonArray:Lorg/json/JSONArray;

    .line 391
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 394
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 400
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u6682\u65f6\u6ca1\u6709\u4f18\u60e0\u5238\u53ef\u4ee5\u4f7f\u7528"

    invoke-static {v6, v7}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    .end local v1           #i:I
    .end local v3           #length:I
    :cond_1
    :goto_1
    return-void

    .line 395
    .restart local v1       #i:I
    .restart local v3       #length:I
    :cond_2
    new-instance v0, Lcom/ub/main/foodsale/FoodCoupon;

    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/ub/main/foodsale/FoodCoupon;-><init>(Lorg/json/JSONObject;)V

    .line 396
    .local v0, coupon:Lcom/ub/main/foodsale/FoodCoupon;
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0           #coupon:Lcom/ub/main/foodsale/FoodCoupon;
    :cond_3
    iget v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    .line 404
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 405
    .local v4, num:I
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->totalCount:I

    if-ge v4, v6, :cond_4

    .line 406
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 417
    :goto_4
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v6}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 408
    :cond_4
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 411
    :cond_5
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ub/main/foodsale/FoodCoupon;

    .line 412
    .local v2, item:Lcom/ub/main/foodsale/FoodCoupon;
    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 413
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    invoke-virtual {v6, v1}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->setSelected(I)V

    goto :goto_4

    .line 410
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 420
    .end local v1           #i:I
    .end local v2           #item:Lcom/ub/main/foodsale/FoodCoupon;
    .end local v3           #length:I
    .end local v4           #num:I
    :cond_7
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "activityList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonArray:Lorg/json/JSONArray;

    .line 421
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 423
    .restart local v3       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-lt v1, v3, :cond_9

    .line 429
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_a

    .line 430
    :cond_8
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u6682\u65f6\u6ca1\u6709\u4f18\u60e0\u6d3b\u52a8\u53ef\u4ee5\u4f7f\u7528"

    invoke-static {v6, v7}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 424
    :cond_9
    new-instance v5, Lcom/ub/main/foodsale/FoodPromotion;

    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ub/main/foodsale/FoodPromotion;-><init>(Lorg/json/JSONObject;)V

    .line 425
    .local v5, promotion:Lcom/ub/main/foodsale/FoodPromotion;
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 432
    .end local v5           #promotion:Lcom/ub/main/foodsale/FoodPromotion;
    :cond_a
    iget v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->pageIndex:I

    .line 433
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 434
    .restart local v4       #num:I
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->totalCount:I

    if-ge v4, v6, :cond_b

    .line 435
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 439
    :goto_6
    const/4 v1, 0x0

    :goto_7
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_c

    .line 446
    :goto_8
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v6}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 437
    :cond_b
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 440
    :cond_c
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ub/main/foodsale/FoodPromotion;

    .line 441
    .local v2, item:Lcom/ub/main/foodsale/FoodPromotion;
    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 442
    iget-object v6, p0, Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    invoke-virtual {v6, v1}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->setSelected(I)V

    goto :goto_8

    .line 439
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 452
    .end local v1           #i:I
    .end local v2           #item:Lcom/ub/main/foodsale/FoodPromotion;
    .end local v3           #length:I
    .end local v4           #num:I
    :cond_e
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u7f51\u7edc\u9519\u8bef,\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {v6, v7}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 360
    packed-switch p1, :pswitch_data_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 362
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 363
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 365
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "status"

    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v2, "icon"

    const-string v3, "icon"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v2, "channel"

    const-string v3, "channel"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v2, "couponPrice"

    const-string v3, "couponPrice"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v2, "newprice"

    const-string v3, "newprice"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v4, v1}, Lcom/ub/main/foodsale/FoodCouponList;->setResult(ILandroid/content/Intent;)V

    .line 376
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->finish()V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0800ed

    if-ne v4, v5, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->back()V

    .line 269
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodCouponList;->finish()V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f08002b

    if-ne v4, v5, :cond_3

    .line 273
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 274
    .local v3, num:I
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->totalCount:I

    if-ge v3, v4, :cond_2

    .line 275
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->getBestCoupon()V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v4, p0, Lcom/ub/main/foodsale/FoodCouponList;->getMoreBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 281
    .end local v3           #num:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080087

    if-ne v4, v5, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/foodsale/FoodCoupon;

    .line 285
    .local v1, coupon:Lcom/ub/main/foodsale/FoodCoupon;
    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->use_nums_limit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->use_nums()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, coupon_num:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "coupon_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "info"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->brief()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v4, "expire"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->expire_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v4, "bigUrl"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->icon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v4, "icon"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->icon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "breif"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->brief()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v4, "oldprice"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->oldPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v4, "id"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v4, "status"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->activity_status()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const-string v4, "icon"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->icon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v4, "channel"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->channel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "couponPrice"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->couponPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v4, "newprice"

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->newPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-class v4, Lcom/ub/main/coupon/CouponDetail;

    invoke-static {p0, v4, v6, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodCouponList;->requestWindowFeature(I)Z

    .line 88
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodCouponList;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->loadData()V

    .line 91
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->initView()V

    .line 92
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->initControl()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 460
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    :cond_0
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->ticketsList:Ljava/util/ArrayList;

    .line 464
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponlist_listView:Landroid/widget/ListView;

    .line 465
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;

    .line 466
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 467
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodCouponList;->back()V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 255
    return-void
.end method
