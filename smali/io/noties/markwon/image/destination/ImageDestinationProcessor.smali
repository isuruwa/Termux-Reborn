.class public abstract Lio/noties/markwon/image/destination/ImageDestinationProcessor;
.super Ljava/lang/Object;
.source "ImageDestinationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/image/destination/ImageDestinationProcessor$NoOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noOp()Lio/noties/markwon/image/destination/ImageDestinationProcessor;
    .locals 2

    .line 16
    new-instance v0, Lio/noties/markwon/image/destination/ImageDestinationProcessor$NoOp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/noties/markwon/image/destination/ImageDestinationProcessor$NoOp;-><init>(Lio/noties/markwon/image/destination/ImageDestinationProcessor$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract process(Ljava/lang/String;)Ljava/lang/String;
.end method
