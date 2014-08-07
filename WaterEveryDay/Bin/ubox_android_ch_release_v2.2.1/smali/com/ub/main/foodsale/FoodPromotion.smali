.class public Lcom/ub/main/foodsale/FoodPromotion;
.super Ljava/lang/Object;
.source "FoodPromotion.java"


# instance fields
.field private activityPrice:Ljava/lang/String;

.field private brief:Ljava/lang/String;

.field private couponPrice:Ljava/lang/String;

.field private coupon_status:Z

.field private created:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private discount_type_name:Ljava/lang/String;

.field private end_time:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private newPrice:Ljava/lang/String;

.field private oldPrice:Ljava/lang/String;

.field private savePrice:Ljava/lang/String;

.field private seller_id:Ljava/lang/String;

.field private start_time:Ljava/lang/String;

.field private status:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/ub/main/foodsale/FoodPromotion;->id:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodPromotion;->title:Ljava/lang/String;

    .line 44
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
    const-string v1, "discount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->discount:Ljava/lang/String;

    .line 16
    const-string v1, "end_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->end_time:Ljava/lang/String;

    .line 17
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->status:Z

    .line 18
    const-string v1, "discount_type_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->discount_type_name:Ljava/lang/String;

    .line 19
    const-string v1, "created"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->created:Ljava/lang/String;

    .line 20
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->title:Ljava/lang/String;

    .line 21
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->icon:Ljava/lang/String;

    .line 22
    const-string v1, "start_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->start_time:Ljava/lang/String;

    .line 23
    const-string v1, "brief"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->brief:Ljava/lang/String;

    .line 24
    const-string v1, "seller_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->seller_id:Ljava/lang/String;

    .line 25
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->id:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodPromotion;->status()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "newPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->newPrice:Ljava/lang/String;

    .line 29
    const-string v1, "savePrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->savePrice:Ljava/lang/String;

    .line 30
    const-string v1, "actvityPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->activityPrice:Ljava/lang/String;

    .line 31
    const-string v1, "couponPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->couponPrice:Ljava/lang/String;

    .line 32
    const-string v1, "oldPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->oldPrice:Ljava/lang/String;

    .line 33
    const-string v1, "coupon_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodPromotion;->coupon_status:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public activityPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->activityPrice:Ljava/lang/String;

    return-object v0
.end method

.method public brief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->brief:Ljava/lang/String;

    return-object v0
.end method

.method public couponPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->couponPrice:Ljava/lang/String;

    return-object v0
.end method

.method public coupon_status()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->coupon_status:Z

    return v0
.end method

.method public created()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->created:Ljava/lang/String;

    return-object v0
.end method

.method public discount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public discount_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->discount_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public end_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->end_time:Ljava/lang/String;

    return-object v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public newPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->newPrice:Ljava/lang/String;

    return-object v0
.end method

.method public oldPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->oldPrice:Ljava/lang/String;

    return-object v0
.end method

.method public savePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->savePrice:Ljava/lang/String;

    return-object v0
.end method

.method public seller_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->seller_id:Ljava/lang/String;

    return-object v0
.end method

.method public setactivityPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodPromotion;->activityPrice:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public start_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public status()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->status:Z

    return v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotion;->title:Ljava/lang/String;

    return-object v0
.end method
