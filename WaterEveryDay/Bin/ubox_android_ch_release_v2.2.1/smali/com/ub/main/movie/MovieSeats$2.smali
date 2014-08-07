.class Lcom/ub/main/movie/MovieSeats$2;
.super Ljava/lang/Object;
.source "MovieSeats.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieSeats;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieSeats;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieSeats;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieSeats$2;->this$0:Lcom/ub/main/movie/MovieSeats;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 377
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 378
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats$2;->this$0:Lcom/ub/main/movie/MovieSeats;

    invoke-virtual {v0}, Lcom/ub/main/movie/MovieSeats;->finish()V

    .line 379
    return-void
.end method
