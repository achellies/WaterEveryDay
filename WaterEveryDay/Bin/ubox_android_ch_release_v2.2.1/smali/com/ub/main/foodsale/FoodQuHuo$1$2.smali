.class Lcom/ub/main/foodsale/FoodQuHuo$1$2;
.super Ljava/lang/Object;
.source "FoodQuHuo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodQuHuo$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ub/main/foodsale/FoodQuHuo$1;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodQuHuo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodQuHuo$1$2;->this$1:Lcom/ub/main/foodsale/FoodQuHuo$1;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$1$2;->this$1:Lcom/ub/main/foodsale/FoodQuHuo$1;

    #getter for: Lcom/ub/main/foodsale/FoodQuHuo$1;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodQuHuo$1;->access$0(Lcom/ub/main/foodsale/FoodQuHuo$1;)Lcom/ub/main/foodsale/FoodQuHuo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->finish()V

    .line 196
    return-void
.end method
