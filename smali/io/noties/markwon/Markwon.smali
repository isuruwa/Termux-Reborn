.class public abstract Lio/noties/markwon/Markwon;
.super Ljava/lang/Object;
.source "Markwon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/Markwon$Builder;,
        Lio/noties/markwon/Markwon$TextSetter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lio/noties/markwon/Markwon$Builder;
    .locals 1

    .line 51
    new-instance v0, Lio/noties/markwon/MarkwonBuilderImpl;

    invoke-direct {v0, p0}, Lio/noties/markwon/MarkwonBuilderImpl;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lio/noties/markwon/core/CorePlugin;->create()Lio/noties/markwon/core/CorePlugin;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/noties/markwon/MarkwonBuilderImpl;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract parse(Ljava/lang/String;)Lorg/commonmark/node/Node;
.end method

.method public abstract render(Lorg/commonmark/node/Node;)Landroid/text/Spanned;
.end method

.method public abstract setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V
.end method

.method public abstract toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;
.end method
