.class public Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;
.super Ljava/lang/Object;
.source "BuyWaySelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/BuyWaySelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataSelect"
.end annotation


# instance fields
.field private detail:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field final synthetic this$0:Lcom/ub/main/foodsale/BuyWaySelect;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ub/main/foodsale/BuyWaySelect;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->this$0:Lcom/ub/main/foodsale/BuyWaySelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->title:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->detail:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "detail"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->detail:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->id:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/ub/main/foodsale/BuyWaySelect$DataSelect;->title:Ljava/lang/String;

    .line 142
    return-void
.end method
