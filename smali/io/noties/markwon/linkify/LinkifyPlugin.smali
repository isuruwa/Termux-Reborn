.class public Lio/noties/markwon/linkify/LinkifyPlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "LinkifyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyCompatTextAddedListener;,
        Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;
    }
.end annotation


# instance fields
.field private final mask:I

.field private final useCompat:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 73
    iput p1, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->mask:I

    .line 74
    iput-boolean p2, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->useCompat:Z

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/linkify/LinkifyPlugin;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->useCompat:Z

    return p0
.end method

.method static synthetic access$100(Lio/noties/markwon/linkify/LinkifyPlugin;)I
    .locals 0

    .line 25
    iget p0, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->mask:I

    return p0
.end method

.method public static create(I)Lio/noties/markwon/linkify/LinkifyPlugin;
    .locals 2

    .line 54
    new-instance v0, Lio/noties/markwon/linkify/LinkifyPlugin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/noties/markwon/linkify/LinkifyPlugin;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
    .locals 2

    .line 79
    const-class v0, Lio/noties/markwon/core/CorePlugin;

    new-instance v1, Lio/noties/markwon/linkify/LinkifyPlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/linkify/LinkifyPlugin$1;-><init>(Lio/noties/markwon/linkify/LinkifyPlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonPlugin$Registry;->require(Ljava/lang/Class;Lio/noties/markwon/MarkwonPlugin$Action;)V

    return-void
.end method
