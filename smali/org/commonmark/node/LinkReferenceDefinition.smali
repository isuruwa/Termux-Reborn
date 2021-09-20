.class public Lorg/commonmark/node/LinkReferenceDefinition;
.super Lorg/commonmark/node/Node;
.source "LinkReferenceDefinition.java"


# instance fields
.field private destination:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/commonmark/node/LinkReferenceDefinition;->label:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/commonmark/node/LinkReferenceDefinition;->destination:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lorg/commonmark/node/LinkReferenceDefinition;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0

    .line 55
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/LinkReferenceDefinition;)V

    return-void
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/commonmark/node/LinkReferenceDefinition;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/commonmark/node/LinkReferenceDefinition;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/commonmark/node/LinkReferenceDefinition;->title:Ljava/lang/String;

    return-object v0
.end method
