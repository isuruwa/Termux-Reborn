.class public Lcom/termux/app/activities/ReportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportActivity.java"


# instance fields
.field mReportActivityMarkdownString:Ljava/lang/String;

.field mReportInfo:Lcom/termux/app/models/ReportInfo;

.field mReportMarkdownString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private generateReportActivityMarkdownString()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    invoke-static {v0}, Lcom/termux/app/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/app/models/ReportInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportMarkdownString:Ljava/lang/String;

    const-string v0, ""

    .line 150
    iput-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    iget-object v0, v0, Lcom/termux/app/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/app/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/app/activities/ReportActivity;->mReportMarkdownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    iget-object v0, v0, Lcom/termux/app/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/app/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/termux/app/models/ReportInfo;)Landroid/content/Intent;
    .locals 2

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/activities/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "report_info"

    .line 169
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 170
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x10080000

    .line 176
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static startReportActivity(Landroid/content/Context;Lcom/termux/app/models/ReportInfo;)V
    .locals 0

    .line 163
    invoke-static {p0, p1}, Lcom/termux/app/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/app/models/ReportInfo;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateUI(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "report_info"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/termux/app/models/ReportInfo;

    iput-object p1, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    if-nez p1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    iget-object v0, v0, Lcom/termux/app/models/ReportInfo;->reportTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "Termux App Report"

    .line 87
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const p1, 0x7f070086

    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    invoke-static {p0}, Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;

    move-result-object v0

    const v1, 0x7f0a001e

    .line 95
    invoke-static {v1}, Lio/noties/markwon/recycler/MarkwonAdapter;->builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/FencedCodeBlock;

    const v3, 0x7f0a001d

    const v4, 0x7f07004b

    .line 96
    invoke-static {v3, v4}, Lio/noties/markwon/recycler/SimpleEntry;->create(II)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->include(Ljava/lang/Class;Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    .line 97
    invoke-interface {v1}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v1

    .line 99
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    invoke-direct {p0}, Lcom/termux/app/activities/ReportActivity;->generateReportActivityMarkdownString()V

    .line 104
    iget-object p1, p0, Lcom/termux/app/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lio/noties/markwon/recycler/MarkwonAdapter;->setMarkdown(Lio/noties/markwon/Markwon;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a001c

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0700c7

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 54
    :goto_0
    invoke-direct {p0, p1}, Lcom/termux/app/activities/ReportActivity;->updateUI(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/app/activities/ReportActivity;->updateUI(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f070074

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/termux/app/activities/ReportActivity;->mReportMarkdownString:Ljava/lang/String;

    if-eqz p1, :cond_1

    const p1, 0x7f0e009d

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportMarkdownString:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/termux/shared/interact/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f070073

    if-ne p1, v0, :cond_1

    .line 137
    iget-object p1, p0, Lcom/termux/app/activities/ReportActivity;->mReportMarkdownString:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1, v0}, Lcom/termux/shared/interact/ShareUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/termux/app/activities/ReportActivity;->mReportInfo:Lcom/termux/app/models/ReportInfo;

    const-string v1, "report_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
