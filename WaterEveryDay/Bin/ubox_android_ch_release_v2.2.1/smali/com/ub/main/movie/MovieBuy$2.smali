.class Lcom/ub/main/movie/MovieBuy$2;
.super Ljava/lang/Object;
.source "MovieBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieBuy;->XYKClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy$2;->this$0:Lcom/ub/main/movie/MovieBuy;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 441
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 442
    return-void
.end method
