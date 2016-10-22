.class public Llenovo/app/ActionBarListActivity;
.super Llenovo/app/ActionBarActivity;
.source "ActionBarListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Llenovo/app/ActionBarActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llenovo/app/ActionBarListActivity;->mHandler:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/app/ActionBarListActivity;->mFinishedStart:Z

    .line 48
    new-instance v0, Llenovo/app/ActionBarListActivity$1;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarListActivity$1;-><init>(Llenovo/app/ActionBarListActivity;)V

    iput-object v0, p0, Llenovo/app/ActionBarListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Llenovo/app/ActionBarListActivity$2;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarListActivity$2;-><init>(Llenovo/app/ActionBarListActivity;)V

    iput-object v0, p0, Llenovo/app/ActionBarListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Llenovo/app/ActionBarListActivity;->ensureList()V

    .line 156
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llenovo/app/ActionBarListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 66
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-direct {p0}, Llenovo/app/ActionBarListActivity;->ensureList()V

    .line 77
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onContentChanged()V

    .line 98
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Llenovo/app/ActionBarListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Llenovo/app/ActionBarListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    .line 100
    iget-object v1, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 108
    :cond_1
    iget-object v1, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Llenovo/app/ActionBarListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-boolean v1, p0, Llenovo/app/ActionBarListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Llenovo/app/ActionBarListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Llenovo/app/ActionBarListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_2
    iget-object v1, p0, Llenovo/app/ActionBarListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Llenovo/app/ActionBarListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/app/ActionBarListActivity;->mFinishedStart:Z

    .line 114
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    invoke-direct {p0}, Llenovo/app/ActionBarListActivity;->ensureList()V

    .line 122
    iput-object p1, p0, Llenovo/app/ActionBarListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 123
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Llenovo/app/ActionBarListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 135
    return-void
.end method
