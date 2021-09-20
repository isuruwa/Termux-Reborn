.class final Lcom/termux/shared/markdown/MarkdownUtils$2;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MarkdownUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
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

    .line 170
    iput-object p1, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$configureSpansFactory$0(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 174
    new-instance p0, Landroid/text/style/StyleSpan;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object p0
.end method

.method static synthetic lambda$configureSpansFactory$1(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 175
    new-instance p0, Landroid/text/style/StyleSpan;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object p0
.end method

.method static synthetic lambda$configureSpansFactory$2(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 176
    new-instance p0, Landroid/text/style/QuoteSpan;

    invoke-direct {p0}, Landroid/text/style/QuoteSpan;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$configureSpansFactory$3(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 177
    new-instance p0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$configureSpansFactory$4(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 179
    new-instance p2, Landroid/text/style/BackgroundColorSpan;

    sget v0, Lcom/termux/shared/R$color;->background_markdown_code_inline:I

    .line 180
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 p0, 0x0

    aput-object p2, p1, p0

    new-instance p0, Landroid/text/style/TypefaceSpan;

    const-string p2, "monospace"

    invoke-direct {p0, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p0, p1, p2

    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 p2, 0x8

    invoke-direct {p0, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 p2, 0x2

    aput-object p0, p1, p2

    return-object p1
.end method

.method static synthetic lambda$configureSpansFactory$5(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    .line 185
    new-instance p0, Landroid/text/style/BulletSpan;

    invoke-direct {p0}, Landroid/text/style/BulletSpan;-><init>()V

    return-object p0
.end method


# virtual methods
.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 3

    .line 173
    const-class v0, Lorg/commonmark/node/Emphasis;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$M9cQHJIaxDysdcnOcYQ2AM9DEnU;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$M9cQHJIaxDysdcnOcYQ2AM9DEnU;

    .line 174
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/StrongEmphasis;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$_Gg_jKOEdAd9tDbfMM515HtVSWw;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$_Gg_jKOEdAd9tDbfMM515HtVSWw;

    .line 175
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/BlockQuote;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;

    .line 176
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$98OTp3o2RXTXtTpkFJSogcFUCp8;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$98OTp3o2RXTXtTpkFJSogcFUCp8;

    .line 177
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/Code;

    iget-object v1, p0, Lcom/termux/shared/markdown/MarkdownUtils$2;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;

    invoke-direct {v2, v1}, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-interface {p1, v0, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/ListItem;

    sget-object v1, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Iy6jbMmJ9qABfTGTqUX6kupO3jI;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Iy6jbMmJ9qABfTGTqUX6kupO3jI;

    .line 185
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    return-void
.end method
