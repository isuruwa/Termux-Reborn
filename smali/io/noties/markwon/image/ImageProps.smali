.class public abstract Lio/noties/markwon/image/ImageProps;
.super Ljava/lang/Object;
.source "ImageProps.java"


# static fields
.field public static final DESTINATION:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_SIZE:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image-destination"

    .line 10
    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    const-string v0, "image-replacement-text-is-link"

    .line 13
    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    const-string v0, "image-size"

    .line 15
    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    return-void
.end method
