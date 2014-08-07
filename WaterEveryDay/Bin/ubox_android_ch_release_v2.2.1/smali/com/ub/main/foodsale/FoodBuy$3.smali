.class Lcom/ub/main/foodsale/FoodBuy$3;
.super Ljava/lang/Object;
.source "FoodBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodBuy;->payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodBuy;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodBuy$3;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$3;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #calls: Lcom/ub/main/foodsale/FoodBuy;->goToGetProductActivity()V
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodBuy;->access$7(Lcom/ub/main/foodsale/FoodBuy;)V

    .line 419
    return-void
.end method
