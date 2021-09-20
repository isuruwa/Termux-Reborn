.class final Lcom/termux/shared/markdown/MarkdownUtils$1;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MarkdownUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$configureSpansFactory$1(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 155
    new-instance p2, Landroid/text/style/BackgroundColorSpan;

    sget v0, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 156
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 p0, 0x0

    aput-object p2, p1, p0

    return-object p1
.end method

.method static synthetic lambda$configureVisitor$0(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 2

    .line 144
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 147
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    return-void
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 3

    .line 153
    const-class v0, Lorg/commonmark/node/Code;

    iget-object v1, p0, Lcom/termux/shared/markdown/MarkdownUtils$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$Xg8HN-dLxbfBmxCqgjnQYQRJEsg;

    invoke-direct {v2, v1}, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$Xg8HN-dLxbfBmxCqgjnQYQRJEsg;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-interface {p1, v0, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 139
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$1$LVEFz0s-Ehp6ZIKgkoeBTUAm_44;

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method
