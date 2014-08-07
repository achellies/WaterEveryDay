.class public Lcom/ub/main/foodsale/FoodCoupon;
.super Ljava/lang/Object;
.source "FoodCoupon.java"


# instance fields
.field private activity_status:Z

.field private actvityPrice:Ljava/lang/String;

.field private brief:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private couponPrice:Ljava/lang/String;

.field private coupon_sn:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private discount_type_name:Ljava/lang/String;

.field private exclude_thirdparty_id:Ljava/lang/String;

.field private expire_time:Ljava/lang/String;

.field private expired_time:Ljava/lang/String;

.field private gift_user_id:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private modified:Ljava/lang/String;

.field private newPrice:Ljava/lang/String;

.field private oldPrice:Ljava/lang/String;

.field private savePrice:Ljava/lang/String;

.field private seller_id:Ljava/lang/String;

.field private status:Z

.field private title:Ljava/lang/String;

.field private use_nums:Ljava/lang/String;

.field private use_nums_limit:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_rank:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "id"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/ub/main/foodsale/FoodCoupon;->id:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCoupon;->title:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    const-string v1, "gift_user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->gift_user_id:Ljava/lang/String;

    .line 16
    const-string v1, "discount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->discount:Ljava/lang/String;

    .line 17
    const-string v1, "channel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->channel:Ljava/lang/String;

    .line 18
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->status:Z

    .line 19
    iget-boolean v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->status:Z

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "couponPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->couponPrice:Ljava/lang/String;

    .line 21
    const-string v1, "newPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->newPrice:Ljava/lang/String;

    .line 22
    const-string v1, "savePrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->savePrice:Ljava/lang/String;

    .line 23
    const-string v1, "oldPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ""

    :goto_3
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->oldPrice:Ljava/lang/String;

    .line 24
    const-string v1, "actvityPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    :goto_4
    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->actvityPrice:Ljava/lang/String;

    .line 26
    :cond_0
    const-string v1, "modified"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->modified:Ljava/lang/String;

    .line 27
    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->user_id:Ljava/lang/String;

    .line 28
    const-string v1, "coupon_sn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->coupon_sn:Ljava/lang/String;

    .line 29
    const-string v1, "exclude_thirdparty_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->exclude_thirdparty_id:Ljava/lang/String;

    .line 30
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->title:Ljava/lang/String;

    .line 31
    const-string v1, "seller_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->seller_id:Ljava/lang/String;

    .line 32
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->id:Ljava/lang/String;

    .line 34
    const-string v1, "user_rank"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->user_rank:Ljava/lang/String;

    .line 35
    const-string v1, "use_nums_limit"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->use_nums_limit:Ljava/lang/String;

    .line 36
    const-string v1, "activity_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->activity_status:Z

    .line 37
    const-string v1, "use_nums"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->use_nums:Ljava/lang/String;

    .line 38
    const-string v1, "expired_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->expired_time:Ljava/lang/String;

    .line 39
    const-string v1, "created"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->created:Ljava/lang/String;

    .line 40
    const-string v1, "expire_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->expire_time:Ljava/lang/String;

    .line 41
    const-string v1, "discount_type_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->discount_type_name:Ljava/lang/String;

    .line 42
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->icon:Ljava/lang/String;

    .line 43
    const-string v1, "brief"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodCoupon;->brief:Ljava/lang/String;

    .line 48
    :goto_5
    return-void

    .line 20
    :cond_1
    const-string v1, "couponPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 21
    :cond_2
    const-string v1, "newPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 22
    :cond_3
    const-string v1, "savePrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 23
    :cond_4
    const-string v1, "oldPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 24
    :cond_5
    const-string v1, "actvityPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_4

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public activity_status()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->activity_status:Z

    return v0
.end method

.method public actvityPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->actvityPrice:Ljava/lang/String;

    return-object v0
.end method

.method public brief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->brief:Ljava/lang/String;

    return-object v0
.end method

.method public channel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public couponPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->couponPrice:Ljava/lang/String;

    return-object v0
.end method

.method public coupon_sn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->coupon_sn:Ljava/lang/String;

    return-object v0
.end method

.method public created()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->created:Ljava/lang/String;

    return-object v0
.end method

.method public discount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public discount_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->discount_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public exclude_thirdparty_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->exclude_thirdparty_id:Ljava/lang/String;

    return-object v0
.end method

.method public expire_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->expire_time:Ljava/lang/String;

    return-object v0
.end method

.method public expired_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->expired_time:Ljava/lang/String;

    return-object v0
.end method

.method public gift_user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->gift_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->id:Ljava/lang/String;

    return-object v0
.end method

.method public modified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->modified:Ljava/lang/String;

    return-object v0
.end method

.method public newPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->newPrice:Ljava/lang/String;

    return-object v0
.end method

.method public oldPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->oldPrice:Ljava/lang/String;

    return-object v0
.end method

.method public savePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->savePrice:Ljava/lang/String;

    return-object v0
.end method

.method public seller_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->seller_id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCoupon;->id:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setcouponPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCoupon;->couponPrice:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public status()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->status:Z

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->title:Ljava/lang/String;

    return-object v0
.end method

.method public use_nums()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->use_nums:Ljava/lang/String;

    return-object v0
.end method

.method public use_nums_limit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->use_nums_limit:Ljava/lang/String;

    return-object v0
.end method

.method public user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public user_rank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCoupon;->user_rank:Ljava/lang/String;

    return-object v0
.end method
