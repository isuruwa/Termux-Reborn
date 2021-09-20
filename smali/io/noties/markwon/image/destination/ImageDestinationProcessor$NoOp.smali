.class Lio/noties/markwon/image/destination/ImageDestinationProcessor$NoOp;
.super Lio/noties/markwon/image/destination/ImageDestinationProcessor;
.source "ImageDestinationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/image/destination/ImageDestinationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOp"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/noties/markwon/image/destination/ImageDestinationProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/noties/markwon/image/destination/ImageDestinationProcessor$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/noties/markwon/image/destination/ImageDestinationProcessor$NoOp;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
