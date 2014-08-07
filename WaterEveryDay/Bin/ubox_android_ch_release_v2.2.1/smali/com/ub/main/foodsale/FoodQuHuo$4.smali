.class Lcom/ub/main/foodsale/FoodQuHuo$4;
.super Ljava/lang/Object;
.source "FoodQuHuo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodQuHuo;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodQuHuo;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodQuHuo$4;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo$4;->this$0:Lcom/ub/main/foodsale/FoodQuHuo;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodQuHuo;->finish()V

    .line 298
    return-void
.end method
