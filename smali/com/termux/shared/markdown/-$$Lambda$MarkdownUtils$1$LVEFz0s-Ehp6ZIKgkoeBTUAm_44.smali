.class public final synthetic Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;

    invoke-direct {v0}, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;-><init>()V

    sput-object v0, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .locals 0

    check-cast p2, Lorg/commonmark/node/FencedCodeBlock;

    invoke-static {p1, p2}, Lcom/termux/shared/markdown/MarkdownUtils$1;->lambda$configureVisitor$0(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V

    return-void
.end method
