.class public Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;
.super Ljava/lang/Object;
.source "StrongEmphasisSpanFactory.java"

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
    new-instance p1, Lio/noties/markwon/core/spans/StrongEmphasisSpan;

    invoke-direct {p1}, Lio/noties/markwon/core/spans/StrongEmphasisSpan;-><init>()V

    return-object p1
.end method
