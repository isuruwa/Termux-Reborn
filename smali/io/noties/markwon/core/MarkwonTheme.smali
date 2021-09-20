.class public Lio/noties/markwon/core/MarkwonTheme;
.super Ljava/lang/Object;
.source "MarkwonTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/MarkwonTheme$Builder;
    }
.end annotation


# static fields
.field private static final HEADING_SIZES:[F


# instance fields
.field protected final blockMargin:I

.field protected final blockQuoteColor:I

.field protected final blockQuoteWidth:I

.field protected final bulletListItemStrokeWidth:I

.field protected final bulletWidth:I

.field protected final codeBackgroundColor:I

.field protected final codeBlockBackgroundColor:I

.field protected final codeBlockMargin:I

.field protected final codeBlockTextColor:I

.field protected final codeBlockTextSize:I

.field protected final codeBlockTypeface:Landroid/graphics/Typeface;

.field protected final codeTextColor:I

.field protected final codeTextSize:I

.field protected final codeTypeface:Landroid/graphics/Typeface;

.field protected final headingBreakColor:I

.field protected final headingBreakHeight:I

.field protected final headingTextSizeMultipliers:[F

.field protected final headingTypeface:Landroid/graphics/Typeface;

.field protected final isLinkedUnderlined:Z

.field protected final linkColor:I

.field protected final listItemColor:I

.field protected final thematicBreakColor:I

.field protected final thematicBreakHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 112
    fill-array-data v0, :array_0

    sput-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method protected constructor <init>(Lio/noties/markwon/core/MarkwonTheme$Builder;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    .line 192
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$100(Lio/noties/markwon/core/MarkwonTheme$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme;->isLinkedUnderlined:Z

    .line 193
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 194
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$300(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 195
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$400(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    .line 196
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    .line 197
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 198
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    .line 199
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    .line 200
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$900(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    .line 201
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1000(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    .line 202
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    .line 203
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    .line 204
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1300(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    .line 205
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1400(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTypeface:Landroid/graphics/Typeface;

    .line 206
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1500(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    .line 207
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1600(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    .line 208
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1700(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    .line 209
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1800(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    .line 210
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$1900(Lio/noties/markwon/core/MarkwonTheme$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    .line 211
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2000(Lio/noties/markwon/core/MarkwonTheme$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    .line 212
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2100(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result v0

    iput v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    .line 213
    invoke-static {p1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->access$2200(Lio/noties/markwon/core/MarkwonTheme$Builder;)I

    move-result p1

    iput p1, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    return-void
.end method

.method public static builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;
    .locals 4

    .line 93
    invoke-static {p0}, Lio/noties/markwon/utils/Dip;->create(Landroid/content/Context;)Lio/noties/markwon/utils/Dip;

    move-result-object p0

    .line 94
    new-instance v0, Lio/noties/markwon/core/MarkwonTheme$Builder;

    invoke-direct {v0}, Lio/noties/markwon/core/MarkwonTheme$Builder;-><init>()V

    const/16 v1, 0x8

    .line 95
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->codeBlockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    const/16 v1, 0x18

    .line 96
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockMargin(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    const/4 v1, 0x4

    .line 97
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->blockQuoteWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lio/noties/markwon/core/MarkwonTheme$Builder;->bulletListItemStrokeWidth(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 99
    invoke-virtual {p0, v2}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->headingBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    .line 100
    invoke-virtual {p0, v1}, Lio/noties/markwon/utils/Dip;->toPx(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/noties/markwon/core/MarkwonTheme$Builder;->thematicBreakHeight(I)Lio/noties/markwon/core/MarkwonTheme$Builder;

    return-object v0
.end method


# virtual methods
.method public applyBlockQuoteStyle(Landroid/graphics/Paint;)V
    .locals 2

    .line 245
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteColor:I

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 250
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public applyCodeBlockTextStyle(Landroid/graphics/Paint;)V
    .locals 2

    .line 334
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    :goto_0
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    :cond_1
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    :goto_1
    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 353
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    if-lez v0, :cond_3

    goto :goto_2

    .line 355
    :cond_3
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    :goto_2
    if-lez v0, :cond_7

    int-to-float v0, v0

    .line 358
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    .line 363
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 365
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockTextSize:I

    if-lez v0, :cond_5

    goto :goto_3

    .line 367
    :cond_5
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    :goto_3
    if-lez v0, :cond_6

    int-to-float v0, v0

    .line 370
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    .line 373
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_7
    :goto_4
    return-void
.end method

.method public applyCodeTextStyle(Landroid/graphics/Paint;)V
    .locals 2

    .line 303
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextColor:I

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 311
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    if-lez v0, :cond_3

    int-to-float v0, v0

    .line 312
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 317
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 319
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeTextSize:I

    if-lez v0, :cond_2

    int-to-float v0, v0

    .line 320
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public applyHeadingBreakStyle(Landroid/graphics/Paint;)V
    .locals 2

    .line 432
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 437
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingBreakHeight:I

    if-ltz v0, :cond_1

    int-to-float v0, v0

    .line 441
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public applyHeadingTextStyle(Landroid/graphics/Paint;I)V
    .locals 5

    .line 411
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 416
    :goto_0
    iget-object v0, p0, Lio/noties/markwon/core/MarkwonTheme;->headingTextSizeMultipliers:[F

    if-eqz v0, :cond_1

    goto :goto_1

    .line 418
    :cond_1
    sget-object v0, Lio/noties/markwon/core/MarkwonTheme;->HEADING_SIZES:[F

    :goto_1
    if-eqz v0, :cond_2

    .line 420
    array-length v2, v0

    if-lt v2, p2, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-int/2addr p2, v1

    aget p2, v0, p2

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void

    .line 423
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 426
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "Supplied heading level: %d is invalid, where configured heading sizes are: `%s`"

    .line 423
    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyLinkStyle(Landroid/text/TextPaint;)V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lio/noties/markwon/core/MarkwonTheme;->isLinkedUnderlined:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 221
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->linkColor:I

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public applyListItemStyle(Landroid/graphics/Paint;)V
    .locals 1

    .line 271
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->listItemColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 276
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    if-eqz v0, :cond_1

    int-to-float v0, v0

    .line 279
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public applyThematicBreakStyle(Landroid/graphics/Paint;)V
    .locals 2

    .line 447
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    .line 452
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 455
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    if-ltz v0, :cond_1

    int-to-float v0, v0

    .line 457
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public getBlockMargin()I
    .locals 1

    .line 255
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    return v0
.end method

.method public getBlockQuoteWidth()I
    .locals 2

    .line 260
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    if-nez v0, :cond_0

    .line 261
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public getBulletWidth(I)I
    .locals 1

    .line 285
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 288
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->bulletWidth:I

    if-eqz v0, :cond_1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public getCodeBackgroundColor(Landroid/graphics/Paint;)I
    .locals 1

    .line 388
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCodeBlockBackgroundColor(Landroid/graphics/Paint;)I
    .locals 1

    .line 401
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockBackgroundColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBackgroundColor:I

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lio/noties/markwon/utils/ColorUtils;->applyAlpha(II)I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCodeBlockMargin()I
    .locals 1

    .line 380
    iget v0, p0, Lio/noties/markwon/core/MarkwonTheme;->codeBlockMargin:I

    return v0
.end method
