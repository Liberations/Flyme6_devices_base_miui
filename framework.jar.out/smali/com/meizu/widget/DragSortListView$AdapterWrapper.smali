.class Lcom/meizu/widget/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/meizu/widget/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lcom/meizu/widget/DragSortListView;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/DragSortListView$AdapterWrapper$1;-><init>(Lcom/meizu/widget/DragSortListView$AdapterWrapper;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    move-object v2, p2

    check-cast v2, Lcom/meizu/widget/DragSortItemView;

    .local v2, "v":Lcom/meizu/widget/DragSortItemView;
    invoke-virtual {v2, v6}, Lcom/meizu/widget/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "oldChild":Landroid/view/View;
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-interface {v3, p1, v1, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v6}, Lcom/meizu/widget/DragSortItemView;->removeViewAt(I)V

    :cond_0
    invoke-virtual {v2, v0}, Lcom/meizu/widget/DragSortItemView;->addView(Landroid/view/View;)V

    .end local v1    # "oldChild":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v4}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcom/meizu/widget/DragSortListView;->-wrap4(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)V

    return-object v2

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "v":Lcom/meizu/widget/DragSortItemView;
    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-interface {v3, p1, v5, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    new-instance v2, Lcom/meizu/widget/DragSortItemViewCheckable;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meizu/widget/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .restart local v2    # "v":Lcom/meizu/widget/DragSortItemView;
    :goto_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Lcom/meizu/widget/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v2    # "v":Lcom/meizu/widget/DragSortItemView;
    :cond_3
    new-instance v2, Lcom/meizu/widget/DragSortItemView;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meizu/widget/DragSortItemView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "v":Lcom/meizu/widget/DragSortItemView;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
