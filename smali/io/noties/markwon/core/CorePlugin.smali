.class public Lio/noties/markwon/core/CorePlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "CorePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
    }
.end annotation


# instance fields
.field private hasExplicitMovementMethod:Z

.field private final onTextAddedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/core/CorePlugin;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/commonmark/node/Node;)I
    .locals 0

    .line 64
    invoke-static {p0}, Lio/noties/markwon/core/CorePlugin;->listLevel(Lorg/commonmark/node/Node;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/commonmark/node/Paragraph;)Z
    .locals 0

    .line 64
    invoke-static {p0}, Lio/noties/markwon/core/CorePlugin;->isInTightList(Lorg/commonmark/node/Paragraph;)Z

    move-result p0

    return p0
.end method

.method private static blockQuote(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 254
    const-class v0, Lorg/commonmark/node/BlockQuote;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$4;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$4;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static bulletList(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 382
    const-class v0, Lorg/commonmark/node/BulletList;

    new-instance v1, Lio/noties/markwon/core/SimpleBlockNodeVisitor;

    invoke-direct {v1}, Lio/noties/markwon/core/SimpleBlockNodeVisitor;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static code(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 271
    const-class v0, Lorg/commonmark/node/Code;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$5;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$5;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method public static create()Lio/noties/markwon/core/CorePlugin;
    .locals 1

    .line 95
    new-instance v0, Lio/noties/markwon/core/CorePlugin;

    invoke-direct {v0}, Lio/noties/markwon/core/CorePlugin;-><init>()V

    return-object v0
.end method

.method private static emphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 243
    const-class v0, Lorg/commonmark/node/Emphasis;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$3;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$3;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 290
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$6;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$6;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static hardLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 487
    const-class v0, Lorg/commonmark/node/HardLineBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$13;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$13;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static heading(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 459
    const-class v0, Lorg/commonmark/node/Heading;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$11;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$11;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static image(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 311
    const-class v0, Lorg/commonmark/node/Image;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$8;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$8;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static indentedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 299
    const-class v0, Lorg/commonmark/node/IndentedCodeBlock;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$7;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$7;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static isInTightList(Lorg/commonmark/node/Paragraph;)Z
    .locals 1

    .line 522
    invoke-virtual {p0}, Lorg/commonmark/node/Block;->getParent()Lorg/commonmark/node/Block;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 524
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p0

    .line 525
    instance-of v0, p0, Lorg/commonmark/node/ListBlock;

    if-eqz v0, :cond_0

    .line 526
    check-cast p0, Lorg/commonmark/node/ListBlock;

    .line 527
    invoke-virtual {p0}, Lorg/commonmark/node/ListBlock;->isTight()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static link(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 534
    const-class v0, Lorg/commonmark/node/Link;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$15;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$15;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 390
    const-class v0, Lorg/commonmark/node/ListItem;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$9;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$9;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static listLevel(Lorg/commonmark/node/Node;)I
    .locals 2

    .line 429
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 431
    instance-of v1, p0, Lorg/commonmark/node/ListItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static orderedList(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 386
    const-class v0, Lorg/commonmark/node/OrderedList;

    new-instance v1, Lio/noties/markwon/core/SimpleBlockNodeVisitor;

    invoke-direct {v1}, Lio/noties/markwon/core/SimpleBlockNodeVisitor;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static paragraph(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 496
    const-class v0, Lorg/commonmark/node/Paragraph;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$14;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$14;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 478
    const-class v0, Lorg/commonmark/node/SoftLineBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$12;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$12;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static strongEmphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 232
    const-class v0, Lorg/commonmark/node/StrongEmphasis;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$2;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$2;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private text(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 211
    const-class v0, Lorg/commonmark/node/Text;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/core/CorePlugin$1;-><init>(Lio/noties/markwon/core/CorePlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static thematicBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 440
    const-class v0, Lorg/commonmark/node/ThematicBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$10;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$10;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method static visitCodeBlock(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Node;)V
    .locals 4

    .line 361
    invoke-interface {p0, p3}, Lio/noties/markwon/MarkwonVisitor;->blockStart(Lorg/commonmark/node/Node;)V

    .line 363
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 365
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    const/16 v2, 0xa0

    .line 366
    invoke-virtual {v1, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 367
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 369
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 371
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 374
    sget-object p2, Lio/noties/markwon/core/CoreProps;->CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 376
    invoke-interface {p0, p3, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 378
    invoke-interface {p0, p3}, Lio/noties/markwon/MarkwonVisitor;->blockEnd(Lorg/commonmark/node/Node;)V

    return-void
.end method


# virtual methods
.method public addOnTextAddedListener(Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;)Lio/noties/markwon/core/CorePlugin;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public afterSetText(Landroid/widget/TextView;)V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lio/noties/markwon/core/CorePlugin;->hasExplicitMovementMethod:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 1

    .line 189
    invoke-static {p1, p2}, Lio/noties/markwon/core/spans/OrderedListItemSpan;->measure(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 193
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 194
    check-cast p2, Landroid/text/Spannable;

    .line 195
    invoke-static {p2, p1}, Lio/noties/markwon/core/spans/TextViewSpan;->applyTo(Landroid/text/Spannable;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 3

    .line 172
    new-instance v0, Lio/noties/markwon/core/factory/CodeBlockSpanFactory;

    invoke-direct {v0}, Lio/noties/markwon/core/factory/CodeBlockSpanFactory;-><init>()V

    .line 174
    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    new-instance v2, Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;-><init>()V

    .line 175
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v1, Lorg/commonmark/node/Emphasis;

    new-instance v2, Lio/noties/markwon/core/factory/EmphasisSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/EmphasisSpanFactory;-><init>()V

    .line 176
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v1, Lorg/commonmark/node/BlockQuote;

    new-instance v2, Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;-><init>()V

    .line 177
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v1, Lorg/commonmark/node/Code;

    new-instance v2, Lio/noties/markwon/core/factory/CodeSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>()V

    .line 178
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v1, Lorg/commonmark/node/FencedCodeBlock;

    .line 179
    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v1, Lorg/commonmark/node/IndentedCodeBlock;

    .line 180
    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/ListItem;

    new-instance v1, Lio/noties/markwon/core/factory/ListItemSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/ListItemSpanFactory;-><init>()V

    .line 181
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/Heading;

    new-instance v1, Lio/noties/markwon/core/factory/HeadingSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/HeadingSpanFactory;-><init>()V

    .line 182
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/Link;

    new-instance v1, Lio/noties/markwon/core/factory/LinkSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/LinkSpanFactory;-><init>()V

    .line 183
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    const-class v0, Lorg/commonmark/node/ThematicBreak;

    new-instance v1, Lio/noties/markwon/core/factory/ThematicBreakSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/ThematicBreakSpanFactory;-><init>()V

    .line 184
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lio/noties/markwon/core/CorePlugin;->text(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 150
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->strongEmphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 151
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->emphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 152
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->blockQuote(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 153
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->code(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 154
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 155
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->indentedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 156
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->image(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 157
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->bulletList(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 158
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->orderedList(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 159
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 160
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->thematicBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 161
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->heading(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 162
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 163
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->hardLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 164
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->paragraph(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 165
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->link(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    return-void
.end method
