.class Lcom/ub/main/movie/MovieBuy$6;
.super Ljava/lang/Object;
.source "MovieBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieBuy;->doPay()V
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
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy$6;->this$0:Lcom/ub/main/movie/MovieBuy;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 596
    sput-boolean v1, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 597
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$6;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$11(Lcom/ub/main/movie/MovieBuy;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 598
    return v1
.end method
