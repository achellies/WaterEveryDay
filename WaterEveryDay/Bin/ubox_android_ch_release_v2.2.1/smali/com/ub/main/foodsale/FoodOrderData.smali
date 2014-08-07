.class public Lcom/ub/main/foodsale/FoodOrderData;
.super Ljava/lang/Object;
.source "FoodOrderData.java"


# static fields
.field public static final CANCEL:I = 0x1

.field public static final CANGET:I = 0x10


# instance fields
.field private booking:Ljava/lang/String;

.field private created:Ljava/lang/String;

.field private earliest:Ljava/lang/String;

.field private food_name:Ljava/lang/String;

.field private goods_type:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_booked:Ljava/lang/String;

.field private latest:Ljava/lang/String;

.field private latest_pre:I

.field private order_id:Ljava/lang/String;

.field private picBig:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private state:I

.field private time_type:Ljava/lang/String;

.field private type:I

.field private user_id:Ljava/lang/String;

.field private vcci_id:Ljava/lang/String;

.field private vmid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->state:I

    .line 58
    :try_start_0
    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->price:Ljava/lang/String;

    .line 59
    const-string v1, "earliest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->earliest:Ljava/lang/String;

    .line 60
    const-string v1, "latest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->latest:Ljava/lang/String;

    .line 61
    const-string v1, "created"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->created:Ljava/lang/String;

    .line 62
    const-string v1, "pid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->pid:Ljava/lang/String;

    .line 63
    const-string v1, "order_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->order_id:Ljava/lang/String;

    .line 64
    const-string v1, "time_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->time_type:Ljava/lang/String;

    .line 65
    const-string v1, "food_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->food_name:Ljava/lang/String;

    .line 67
    const-string v1, "vmid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->vmid:Ljava/lang/String;

    .line 68
    const-string v1, "picBig"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->picBig:Ljava/lang/String;

    .line 69
    const-string v1, "booking"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->booking:Ljava/lang/String;

    .line 70
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->type:I

    .line 71
    const-string v1, "latest_pre"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->latest_pre:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public booking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->booking:Ljava/lang/String;

    return-object v0
.end method

.method public canCancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/ub/main/foodsale/FoodOrderData;->state:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGet()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->state:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public created()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->created:Ljava/lang/String;

    return-object v0
.end method

.method public earliest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->earliest:Ljava/lang/String;

    return-object v0
.end method

.method public food_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->food_name:Ljava/lang/String;

    return-object v0
.end method

.method public goods_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->goods_type:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public is_booked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->is_booked:Ljava/lang/String;

    return-object v0
.end method

.method public latest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->latest:Ljava/lang/String;

    return-object v0
.end method

.method public order_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method public picBig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->picBig:Ljava/lang/String;

    return-object v0
.end method

.method public pid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 84
    iput p1, p0, Lcom/ub/main/foodsale/FoodOrderData;->state:I

    .line 85
    return-void
.end method

.method public time_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->time_type:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->type:I

    return v0
.end method

.method public user_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public vcci_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->vcci_id:Ljava/lang/String;

    return-object v0
.end method

.method public vmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodOrderData;->vmid:Ljava/lang/String;

    return-object v0
.end method
