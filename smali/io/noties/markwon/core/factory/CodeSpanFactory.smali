.class public Lio/noties/markwon/core/factory/CodeSpanFactory;
.super Ljava/lang/Object;
.source "CodeSpanFactory.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 15
    new-instance p2, Lio/noties/markwon/core/spans/CodeSpan;

    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->theme()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/noties/markwon/core/spans/CodeSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;)V

    return-object p2
.end method
