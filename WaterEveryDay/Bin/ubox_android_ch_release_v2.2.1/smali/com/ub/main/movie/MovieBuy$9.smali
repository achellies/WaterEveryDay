.class Lcom/ub/main/movie/MovieBuy$9;
.super Ljava/lang/Object;
.source "MovieBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieBuy;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieBuy;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy$9;->this$0:Lcom/ub/main/movie/MovieBuy;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$9;->this$0:Lcom/ub/main/movie/MovieBuy;

    const/4 v1, 0x0

    #setter for: Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ub/main/movie/MovieBuy;->access$12(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$9;->this$0:Lcom/ub/main/movie/MovieBuy;

    invoke-virtual {v0}, Lcom/ub/main/movie/MovieBuy;->finish()V

    .line 984
    return-void
.end method
