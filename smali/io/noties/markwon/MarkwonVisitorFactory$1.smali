.class Lio/noties/markwon/MarkwonVisitorFactory$1;
.super Lio/noties/markwon/MarkwonVisitorFactory;
.source "MarkwonVisitorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/MarkwonVisitorFactory;->create(Lio/noties/markwon/MarkwonVisitor$Builder;Lio/noties/markwon/MarkwonConfiguration;)Lio/noties/markwon/MarkwonVisitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Lio/noties/markwon/MarkwonVisitor$Builder;

.field final synthetic val$configuration:Lio/noties/markwon/MarkwonConfiguration;


# direct methods
.method constructor <init>(Lio/noties/markwon/MarkwonVisitor$Builder;Lio/noties/markwon/MarkwonConfiguration;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lio/noties/markwon/MarkwonVisitorFactory$1;->val$builder:Lio/noties/markwon/MarkwonVisitor$Builder;

    iput-object p2, p0, Lio/noties/markwon/MarkwonVisitorFactory$1;->val$configuration:Lio/noties/markwon/MarkwonConfiguration;

    invoke-direct {p0}, Lio/noties/markwon/MarkwonVisitorFactory;-><init>()V

    return-void
.end method


# virtual methods
.method create()Lio/noties/markwon/MarkwonVisitor;
    .locals 3

    .line 21
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorFactory$1;->val$builder:Lio/noties/markwon/MarkwonVisitor$Builder;

    iget-object v1, p0, Lio/noties/markwon/MarkwonVisitorFactory$1;->val$configuration:Lio/noties/markwon/MarkwonConfiguration;

    new-instance v2, Lio/noties/markwon/RenderPropsImpl;

    invoke-direct {v2}, Lio/noties/markwon/RenderPropsImpl;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/noties/markwon/MarkwonVisitor$Builder;->build(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Lio/noties/markwon/MarkwonVisitor;

    move-result-object v0

    return-object v0
.end method
