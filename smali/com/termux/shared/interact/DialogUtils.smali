.class public final Lcom/termux/shared/interact/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/interact/DialogUtils$TextSetListener;
    }
.end annotation


# direct methods
.method static synthetic lambda$textInput$0(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 34
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/termux/shared/interact/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 35
    aget-object p0, p2, p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$textInput$1(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/termux/shared/interact/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$textInput$2(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/termux/shared/interact/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$textInput$3(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/termux/shared/interact/DialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method

.method public static textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/DialogUtils$TextSetListener;ILcom/termux/shared/interact/DialogUtils$TextSetListener;ILcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    .line 24
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v7}, Landroid/widget/EditText;->setSingleLine()V

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/app/AlertDialog;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    invoke-virtual {v7, v9, v10}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 33
    new-instance v9, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$bXuhRzydW5cQbgHZA-l1X9GasMY;

    invoke-direct {v9, v3, v7, v8}, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$bXuhRzydW5cQbgHZA-l1X9GasMY;-><init>(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v1, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    mul-float/2addr v10, v9

    .line 41
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/high16 v11, 0x41c00000    # 24.0f

    mul-float/2addr v9, v11

    .line 42
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 44
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v11, v10, v10, v10, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move v0, p1

    .line 51
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;

    invoke-direct {v1, v3, v7}, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;-><init>(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v4, :cond_1

    .line 55
    new-instance v1, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$GrP5aAXtFYAzfCEoFX2gQwkjr8g;

    invoke-direct {v1, v4, v7}, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$GrP5aAXtFYAzfCEoFX2gQwkjr8g;-><init>(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v2, p5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-nez v5, :cond_2

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 61
    :cond_2
    new-instance v1, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$tiAq_stAkS0VAAl7z2_Yz4pbRr4;

    invoke-direct {v1, v5, v7}, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$tiAq_stAkS0VAAl7z2_Yz4pbRr4;-><init>(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v2, p7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    if-eqz v6, :cond_3

    .line 64
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 67
    aget-object v0, v8, v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    aget-object v0, v8, v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
