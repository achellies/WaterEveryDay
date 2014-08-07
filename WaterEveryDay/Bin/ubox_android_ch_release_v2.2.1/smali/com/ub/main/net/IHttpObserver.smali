.class public interface abstract Lcom/ub/main/net/IHttpObserver;
.super Ljava/lang/Object;
.source "IHttpObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/net/IHttpObserver$HttpErrorCode;
    }
.end annotation


# virtual methods
.method public abstract HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V
.end method

.method public abstract HttpResponseOk(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
