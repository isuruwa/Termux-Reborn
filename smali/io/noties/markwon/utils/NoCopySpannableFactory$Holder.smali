.class Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;
.super Ljava/lang/Object;
.source "NoCopySpannableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/utils/NoCopySpannableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/noties/markwon/utils/NoCopySpannableFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lio/noties/markwon/utils/NoCopySpannableFactory;

    invoke-direct {v0}, Lio/noties/markwon/utils/NoCopySpannableFactory;-><init>()V

    sput-object v0, Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;->INSTANCE:Lio/noties/markwon/utils/NoCopySpannableFactory;

    return-void
.end method

.method static synthetic access$000()Lio/noties/markwon/utils/NoCopySpannableFactory;
    .locals 1

    .line 28
    sget-object v0, Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;->INSTANCE:Lio/noties/markwon/utils/NoCopySpannableFactory;

    return-object v0
.end method
