.class abstract Lio/noties/markwon/MarkwonVisitorFactory;
.super Ljava/lang/Object;
.source "MarkwonVisitorFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lio/noties/markwon/MarkwonVisitor$Builder;Lio/noties/markwon/MarkwonConfiguration;)Lio/noties/markwon/MarkwonVisitorFactory;
    .locals 1

    .line 17
    new-instance v0, Lio/noties/markwon/MarkwonVisitorFactory$1;

    invoke-direct {v0, p0, p1}, Lio/noties/markwon/MarkwonVisitorFactory$1;-><init>(Lio/noties/markwon/MarkwonVisitor$Builder;Lio/noties/markwon/MarkwonConfiguration;)V

    return-object v0
.end method


# virtual methods
.method abstract create()Lio/noties/markwon/MarkwonVisitor;
.end method
